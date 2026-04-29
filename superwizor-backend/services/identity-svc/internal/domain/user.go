package domain

import (
	"time"

	"github.com/google/uuid"
)

type UserRole string

const (
	UserRoleTherapist UserRole = "THERAPIST"
	UserRolePatient   UserRole = "PATIENT"
)

type User struct {
	ID                  uuid.UUID
	Role                UserRole
	OrganizationID      *uuid.UUID
	DefaultModalityID   *uuid.UUID
	BillingAddressID    *uuid.UUID
	FirebaseUID         string
	Email               string
	PhoneNumber         *string
	IsEmailVerified     bool
	FirstName           string
	LastName            string
	ProfessionalTitle   *string
	CredentialsNumber   *string
	Biography           *string
	AvatarURL           *string
	UILanguage          string
	Timezone            string
	HasAcceptedToS      bool
	HasMarketingConsent bool
	CreatedAt           time.Time
}

type UserContext struct {
	UserID         uuid.UUID
	FirebaseUID    string
	Role           UserRole
	OrganizationID *uuid.UUID
	Email          string
}
