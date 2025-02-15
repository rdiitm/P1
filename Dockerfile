# Step 1: Use the official Node.js image from the Docker Hub
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose the port the application will run on (default Node.js port)
EXPOSE 3000

# Step 7: Set the default command to run the application
CMD ["npm", "start"]
