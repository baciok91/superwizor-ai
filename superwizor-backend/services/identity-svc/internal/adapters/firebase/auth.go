package firebase

import (
	"context"
	"fmt"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/auth"
	"google.golang.org/api/option"

	"github.com/superwizor-ai/backend/services/identity-svc/internal/domain"
)

type AuthClient struct {
	client *auth.Client
}

func NewAuthClient(ctx context.Context, projectID string) (*AuthClient, error) {
	conf := &firebase.Config{ProjectID: projectID}
	// Use Application Default Credentials w GCP
	app, err := firebase.NewApp(ctx, conf, option.WithoutAuthentication())
	if err != nil {
		return nil, fmt.Errorf("init firebase app: %w", err)
	}

	authClient, err := app.Auth(ctx)
	if err != nil {
		return nil, fmt.Errorf("init auth client: %w", err)
	}

	return &AuthClient{client: authClient}, nil
}

// VerifyToken validates Firebase ID token and returns Firebase UID + claims.
func (a *AuthClient) VerifyToken(ctx context.Context, idToken string) (string, map[string]any, error) {
	token, err := a.client.VerifyIDToken(ctx, idToken)
	if err != nil {
		// Firebase SDK returns specific error types
		if auth.IsIDTokenExpired(err) {
			return "", nil, domain.ErrTokenExpired
		}
		return "", nil, domain.ErrInvalidToken
	}

	return token.UID, token.Claims, nil
}
