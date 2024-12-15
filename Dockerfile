# Step 1: Use an official Node.js runtime as a parent image
FROM node:20

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json (or yarn.lock) into the container
# This allows npm install to run only when the package.json files change
COPY package*.json ./

# Step 4: Install the app dependencies
RUN npm install

# Step 5: Copy the rest of the application code into the container
COPY . .

# Step 6: Expose the port your app will run on
EXPOSE 3000

# Step 7: Command to run your app
CMD [ "npm", "start" ]
