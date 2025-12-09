# 📊 Bulk Account Creation - CSV File Upload Method

## 🎯 Overview

Create **multiple AWS accounts** by editing a CSV file and pushing to GitHub. Easiest method for bulk provisioning!

---

## 🚀 Quick Start (3 Steps)

### Step 1: Edit the CSV File

1. **Navigate to the file:**
   ```
   bulk-accounts.csv
   ```

2. **Click the ✏️ Edit button** (pencil icon) on GitHub

3. **Add your accounts** (remove the `#` from example lines or add new lines):
   ```csv
   AccountName,AccountEmail,OrganizationalUnit,Environment
   Student01,student01+batch14@training.com,Batch14,Development
   Student02,student02+batch14@training.com,Batch14,Development
   Student03,student03+batch14@training.com,Batch14,Development
   ```

4. **Click "Commit changes"** → "Commit directly to main branch"

### Step 2: Automatic Processing

✅ **That's it!** The workflow automatically triggers and creates all accounts!

### Step 3: Monitor Progress

- **GitHub Actions**: Check the workflow run status
- **Organizations**: See accounts become ACTIVE in ~20 minutes

---

## 📋 CSV Format

### Structure
```csv
AccountName,AccountEmail,OrganizationalUnit,Environment
```

### Example Entries
```csv
Student01,student01@example.com,Batch14,Development
DevAccount,dev@company.com,Sandbox,Development
ProdAccount,prod@company.com,LearnMck,Production
```

### Rules
- **Header required**: First line must be `AccountName,AccountEmail,OrganizationalUnit,Environment`
- **Comments**: Lines starting with `#` are ignored
- **Unique emails**: Each account needs a different email
- **No spaces** around commas (or they'll be trimmed)

---

## 📁 Sample File

A complete sample file is available at:
```
bulk-accounts-sample.csv
```

This includes examples for:
- ✅ Student batch (20 students)
- ✅ Multi-environment setup (Dev, Test, Staging, Prod)
- ✅ Team sandboxes
- ✅ Lab environments

**To use:**
1. Copy `bulk-accounts-sample.csv` content
2. Paste into `bulk-accounts.csv`
3. Remove `#` from accounts you want
4. Update emails to be unique
5. Commit and push!

---

## 🎓 Real Examples

### Example 1: Create 5 Student Accounts

**Edit bulk-accounts.csv:**
```csv
AccountName,AccountEmail,OrganizationalUnit,Environment
Batch14Student01,ravish.snkhyn+s01@gmail.com,Batch14,Development
Batch14Student02,ravish.snkhyn+s02@gmail.com,Batch14,Development
Batch14Student03,ravish.snkhyn+s03@gmail.com,Batch14,Development
Batch14Student04,ravish.snkhyn+s04@gmail.com,Batch14,Development
Batch14Student05,ravish.snkhyn+s05@gmail.com,Batch14,Development
```

**Commit and push** → ✅ 5 accounts created automatically!

---

### Example 2: Multi-Environment Project

**Edit bulk-accounts.csv:**
```csv
AccountName,AccountEmail,OrganizationalUnit,Environment
MyProject-Dev,myproject+dev@company.com,Sandbox,Development
MyProject-Test,myproject+test@company.com,Sandbox,Testing
MyProject-Staging,myproject+stage@company.com,LearnMck,Staging
MyProject-Prod,myproject+prod@company.com,LearnMck,Production
```

**Commit and push** → ✅ 4 accounts in 2 OUs created!

---

## 💡 Pro Tips

### 1. Use Gmail + Aliases
```csv
AccountName,AccountEmail,OrganizationalUnit,Environment
Student01,ravish.snkhyn+student01@gmail.com,Batch14,Development
Student02,ravish.snkhyn+student02@gmail.com,Batch14,Development
```
All emails go to `ravish.snkhyn@gmail.com` - easy management!

### 2. Generate from Excel
1. Create table in Excel:
   | AccountName | AccountEmail | OrganizationalUnit | Environment |
   |-------------|--------------|-------------------|-------------|
   | Student01   | s01@ex.com   | Batch14          | Development |

2. Save as CSV
3. Copy content to `bulk-accounts.csv`
4. Commit and push!

### 3. Keep Sample Lines Commented
Leave sample lines commented (`#`) for reference:
```csv
AccountName,AccountEmail,OrganizationalUnit,Environment
# Sample: Student01,student@example.com,Batch14,Development
YourAccount,your@email.com,Sandbox,Development
```

### 4. Process in Batches
**Recommendation:** 10-15 accounts per file for easier monitoring

---

## 📊 Available Options

### Organizational Units (OUs)
- `LearnMck` - Learning/Training
- `Sandbox` - Experimentation
- `Batch14` - Student batch 14
- `Batch15` - Student batch 15
- `AFT-Lab-Rajesh` - Lab environment
- `Security` - Security tools

### Environments
- `Development`
- `Testing`
- `Staging`
- `Production`

---

## ⏱️ Timeline

| Time | Event |
|------|-------|
| 0 min | Push `bulk-accounts.csv` to GitHub |
| +0 sec | Workflow auto-triggers |
| +1 min | Terraform modules generated |
| +2 min | CodePipeline triggered |
| +5 min | DynamoDB entries created |
| +20 min | All accounts ACTIVE ✅ |

---

## 🔍 Monitoring

### Check Workflow Status
```
https://github.com/ravishmck/learn-terraform-aft-account-request/actions
```

### Verify Accounts Created
1. **DynamoDB**: Check `aft-request` table
2. **Organizations**: See accounts list
3. **Email**: Get budget alert confirmations

---

## 🔄 Workflow Behavior

### Automatic Trigger
When you push changes to `bulk-accounts.csv`:
1. ✅ Workflow automatically runs
2. ✅ Processes all non-comment lines
3. ✅ Creates Terraform modules
4. ✅ Resets CSV file to template
5. ✅ Pushes changes back

### Manual Trigger
You can also manually trigger:
1. Go to Actions → "Process Bulk Accounts CSV"
2. Click "Run workflow"
3. Processes current `bulk-accounts.csv`

---

## 💰 Cost Control

Every account automatically gets:
- ✅ $200 monthly budget limit
- ✅ Email alerts at $160, $180, $200
- ✅ Forecasted spending alerts
- ⚠️ Optional SCP to block expensive services

---

## ❌ Troubleshooting

### Issue: No accounts created

**Check:**
1. Did you remove the `#` from lines?
2. Are emails unique?
3. Check GitHub Actions for errors

### Issue: Email already exists

**Error:** Email address already in use

**Solution:** Use unique emails (+ aliases work great!)

### Issue: Invalid OU name

**Error:** OU not found

**Solution:** Use exact OU names (case-sensitive):
- ✅ `Batch14` (correct)
- ❌ `batch14` (wrong)

---

## 📖 Files

- `bulk-accounts.csv` - Your working file (edit this!)
- `bulk-accounts-sample.csv` - Sample/reference (don't edit)
- `.github/workflows/process-bulk-csv.yml` - Auto-processing workflow

---

## 🎉 Summary

**Easiest Bulk Creation Method:**
1. Edit `bulk-accounts.csv` on GitHub
2. Add your accounts (remove `#`)
3. Commit
4. ✅ Automatic processing!

**No CLI needed, no complex JSON, just edit and commit!** 🚀

