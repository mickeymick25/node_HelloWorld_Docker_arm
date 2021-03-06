FROM hypriot/rpi-node

# Adding source files into container
ADD src/ /src

# Define working directory
WORKDIR /src

# install leapjs
RUN npm install leapjs

# Install app dependencies
RUN npm install

# Open Port 80
EXPOSE 80

# Run Node.js
CMD ["node", "index.js"]
