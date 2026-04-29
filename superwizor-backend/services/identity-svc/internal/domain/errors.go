package domain

import "errors"

var (
	ErrUserNotFound      = errors.New("user not found")
	ErrUserAlreadyExists = errors.New("user already exists")
	ErrInvalidToken      = errors.New("invalid firebase token")
	ErrTokenExpired      = errors.New("firebase token expired")
	ErrPermissionDenied  = errors.New("permission denied")
	ErrInvalidInput      = errors.New("invalid input")
)
