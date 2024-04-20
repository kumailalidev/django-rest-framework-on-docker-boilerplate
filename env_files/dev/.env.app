# Service:      web
# Container:    django (Named)
# ------------------------------------------------------------------------------

# GENERAL
# ------------------------------------------------------------------------------
DJANGO_SETTINGS_MODULE=config.settings.development
DJANGO_DEBUG=True
DJANGO_SECRET_KEY='1!42-6x(!4nc4#1sn@s7lr#yfp=u!qg&9$ipg^z4st0e*hu+d7'

# DATABASE
# ------------------------------------------------------------------------------
DATABASE_NAME=${DB_NAME}
DATABASE_USER=${DB_USER}
DATABASE_PASSWORD=${DB_PASSWORD}
DATABASE_HOST=${DB_HOST}
DATABASE_PORT=${DB_PORT}

# postgres://user:password@hostname_or_ip:port/database_name
DATABASE_URL=postgres://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}

# SECURITY
# ------------------------------------------------------------------------------
# NGINX reverse proxy server
DJANGO_CSRF_TRUSTED_ORIGINS=http://localhost:${SERVER_PORT_MAP}

# EMAIL (mailhog)
# ------------------------------------------------------------------------------
DJANGO_EMAIL_BACKEND=django.core.mail.backends.smtp.EmailBackend
DJANGO_EMAIL_HOST=${SMTP_HOST}
DJANGO_EMAIL_PORT=${SMTP_PORT}
