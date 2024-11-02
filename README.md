# Someday

A google app script scheduler

built with react typescript shadcn/ui and vite


# Install 


### Step 1: Set Up Your Environment

__you may need to sign out of all accounts, and only into your target account__

1. **Install `clasp`:**
   - Ensure you have Node.js installed.
   - Install `clasp` globally using npm:
     ```bash
     npm install -g @google/clasp
     ```

2. **Login with `clasp`:**
   - Execute the following command to log in:
     ```bash
     clasp login
     ```

3. **Remove Existing Configuration (if necessary):**
   - If you encounter issues, remove the existing `.clasp.json` file:
     ```bash
     rm .clasp.json
     ```


4. **Enable Apps Script API:**
   - Visit [Google Apps Script API settings](https://script.google.com/home/usersettings).
   - Enable the Apps Script API.
   - Wait a few minutes for the changes to propagate.

### Step 2: Create and Deploy the Script

1. **Create a New Project:**
   - Create a new Apps Script project as a web app:
     ```bash
     clasp create --type webapp
     ```

2. **Deploy the Script:**
   - Use the following command to deploy your script:
     ```bash
     npm run deploy
     ```


3. **Access the Web App:**
   - Visit the URL provided after deployment.
   - You will see the message "Authorization is required to perform that action."
  
4. **Authorize the Web App:**
   - run `clasp open` to open the editor
   - go to `dist/app.gs`
   - in the drop down at the top, select `fetchAvailability` then hit run
   - Authorization modal will pop up, 'Review permissions', select your account, you will see a warning, go to advanced, then Go to <your script>(unsafe) then click Allow
   - if it worked, refresh the page/editor then run the function again and it should complete without issue.
