FROM node:20-alpine AS runner

# Install serve for static files
RUN npm install -g serve

WORKDIR /app

# Copy the static HTML file
COPY index.html .

# Serve on port 3000
EXPOSE 3000

CMD ["serve", "-s", "-l", "3000"]
