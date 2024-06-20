FROM node:20.13.1-alpine

ENV NAME twitter-backend

# Use host.docker.internal to refer to the host machine from within the container
ENV DATABASE_URL postgres://postgres:123456@host.docker.internal:54321/twitter-backend

# Create the application directory
RUN mkdir /${NAME}

WORKDIR /${NAME}

# Install pnpm globally
RUN npm install -g pnpm

# Copy package.json and pnpm-lock.yaml (if available) for dependency installation
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install

# Copy the rest of the application code
COPY .. .

# Run the prisma migration dev script to sync the database
RUN pnpx prisma migrate dev --name init

# Build the TypeScript code
RUN pnpm run build

# Expose the application port
EXPOSE 4747

# Start the application
CMD ["pnpm", "start"]
