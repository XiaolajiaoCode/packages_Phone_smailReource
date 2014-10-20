.class public Lcom/android/phone/XDivertPhoneNumbers;
.super Landroid/app/Activity;
.source "XDivertPhoneNumbers.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mLine1Numbers:[Landroid/widget/EditText;

.field mNumPhones:I

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mXDivertUtility:Lcom/android/phone/XDivertUtility;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 153
    new-instance v0, Lcom/android/phone/XDivertPhoneNumbers$3;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertPhoneNumbers$3;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/android/phone/XDivertPhoneNumbers$4;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertPhoneNumbers$4;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    iput-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/XDivertPhoneNumbers;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertPhoneNumbers;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertPhoneNumbers;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertPhoneNumbers;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertPhoneNumbers;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->isValidNumbers()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertPhoneNumbers;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/XDivertPhoneNumbers;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->processXDivert()V

    return-void
.end method

.method private displayAlertDialog(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d022e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/XDivertPhoneNumbers$2;

    invoke-direct {v2, p0}, Lcom/android/phone/XDivertPhoneNumbers$2;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/XDivertPhoneNumbers$1;

    invoke-direct {v1, p0}, Lcom/android/phone/XDivertPhoneNumbers$1;-><init>(Lcom/android/phone/XDivertPhoneNumbers;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 103
    return-void
.end method

.method private getLine1Numbers()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    new-array v1, v2, [Ljava/lang/String;

    .line 131
    .local v1, "line1Numbers":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-object v1
.end method

.method private isValidNumbers()Z
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "num":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 150
    .end local v1    # "num":Ljava/lang/String;
    :goto_1
    return v2

    .line 146
    .restart local v1    # "num":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "num":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private processXDivert()V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    const-class v1, Lcom/android/phone/XDivertSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 140
    const-string v1, "XDivertPhoneNumbers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSave: line numbers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getLine1Numbers()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v1, "Line1Numbers"

    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getLine1Numbers()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertPhoneNumbers;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method private setupView()V
    .locals 6

    .prologue
    .line 106
    const/4 v3, 0x2

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 108
    .local v1, "numberEditTextId":[I
    iget v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    new-array v3, v3, [Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    .line 112
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v3}, Lcom/android/phone/XDivertUtility;->getLineNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "subLine1Number":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    if-ge v0, v3, :cond_1

    .line 114
    const-string v3, "XDivertPhoneNumbers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupView sub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " line number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v4, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    aget v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v4, v0

    .line 116
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/XDivertPhoneNumbers;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/android/phone/XDivertPhoneNumbers;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    .line 124
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/XDivertPhoneNumbers;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_2
    return-void

    .line 106
    :array_0
    .array-data 4
        0x7f0800b3
        0x7f0800b4
    .end array-data
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/XDivertPhoneNumbers;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mNumPhones:I

    .line 68
    invoke-static {}, Lcom/android/phone/XDivertUtility;->getInstance()Lcom/android/phone/XDivertUtility;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    .line 69
    const v2, 0x7f040032

    invoke-virtual {p0, v2}, Lcom/android/phone/XDivertPhoneNumbers;->setContentView(I)V

    .line 73
    iget-object v2, p0, Lcom/android/phone/XDivertPhoneNumbers;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v2}, Lcom/android/phone/XDivertUtility;->checkImsiReady()Z

    move-result v1

    .line 74
    .local v1, "isImsiReady":Z
    const-string v2, "XDivertPhoneNumbers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate isImsiReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez v1, :cond_0

    .line 76
    const v2, 0x7f0d023f

    invoke-direct {p0, v2}, Lcom/android/phone/XDivertPhoneNumbers;->displayAlertDialog(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/XDivertPhoneNumbers;->setupView()V

    goto :goto_0
.end method
