.class public Lcom/android/phone/MSimDialerActivity;
.super Landroid/app/Activity;
.source "MSimDialerActivity.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCount:I

.field private mTextNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimDialerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimDialerActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/MSimDialerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimDialerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    return-void
.end method

.method private getMultiSimName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launchMSDialer()V
    .locals 15

    .prologue
    .line 157
    iget-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 159
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f040009

    const v11, 0x7f080027

    invoke-virtual {p0, v11}, Lcom/android/phone/MSimDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v6, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 162
    .local v7, "layout":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v11, Lcom/android/phone/MSimDialerActivity$1;

    invoke-direct {v11, p0}, Lcom/android/phone/MSimDialerActivity$1;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 193
    const v11, 0x7f080028

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    .line 195
    const-string v10, ""

    .line 196
    .local v10, "vm":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 197
    iget-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 199
    :cond_0
    if-eqz v10, :cond_2

    const-string v11, "voicemail"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 200
    iget-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0082

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const-string v11, "MSimDialerActivity"

    const-string v12, "its voicemail!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    const v11, 0x7f08002c

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 207
    .local v3, "callCancel":Landroid/widget/Button;
    new-instance v11, Lcom/android/phone/MSimDialerActivity$2;

    invoke-direct {v11, p0}, Lcom/android/phone/MSimDialerActivity$2;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget v11, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    new-array v2, v11, [Landroid/widget/Button;

    .line 215
    .local v2, "callButton":[Landroid/widget/Button;
    const/4 v11, 0x3

    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 216
    .local v4, "callMark":[I
    const/4 v11, 0x3

    new-array v9, v11, [I

    fill-array-data v9, :array_1

    .line 217
    .local v9, "subString":[I
    const/4 v5, 0x0

    .line 218
    .local v5, "index":I
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v8

    .line 220
    .local v8, "subManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    const/4 v5, 0x0

    :goto_1
    iget v11, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v5, v11, :cond_3

    .line 221
    invoke-virtual {v8, v5}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 222
    aget v11, v4, v5

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 223
    .local v1, "button":Landroid/widget/Button;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    .end local v1    # "button":Landroid/widget/Button;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 203
    .end local v2    # "callButton":[Landroid/widget/Button;
    .end local v3    # "callCancel":Landroid/widget/Button;
    .end local v4    # "callMark":[I
    .end local v5    # "index":I
    .end local v8    # "subManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    .end local v9    # "subString":[I
    :cond_2
    iget-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mTextNumber:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    .restart local v2    # "callButton":[Landroid/widget/Button;
    .restart local v3    # "callCancel":Landroid/widget/Button;
    .restart local v4    # "callMark":[I
    .restart local v5    # "index":I
    .restart local v8    # "subManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    .restart local v9    # "subString":[I
    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget v11, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v5, v11, :cond_4

    .line 228
    aget v11, v4, v5

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    aput-object v11, v2, v5

    .line 231
    aget-object v11, v2, v5

    invoke-direct {p0, v5}, Lcom/android/phone/MSimDialerActivity;->getMultiSimName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    aget-object v11, v2, v5

    new-instance v12, Lcom/android/phone/MSimDialerActivity$3;

    invoke-direct {v12, p0}, Lcom/android/phone/MSimDialerActivity$3;-><init>(Lcom/android/phone/MSimDialerActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 251
    :cond_4
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v5

    .line 252
    iget v11, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v5, v11, :cond_5

    .line 253
    aget-object v11, v2, v5

    const v12, 0x7f020040

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 256
    :cond_5
    iget-object v11, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 257
    return-void

    .line 215
    nop

    :array_0
    .array-data 4
        0x7f080029
        0x7f08002a
        0x7f08002b
    .end array-data

    .line 216
    :array_1
    .array-data 4
        0x7f0d030a
        0x7f0d030b
        0x7f0d030c
    .end array-data
.end method

.method private startOutgoingCall(I)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    const-class v1, Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 272
    const-string v0, "MSimDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOutgoingCall for sub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v0, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 275
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->finish()V

    .line 281
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimDialerActivity;->setResult(ILandroid/content/Intent;)V

    .line 278
    const-string v0, "MSimDialerActivity"

    const-string v1, "call cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method isInCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 260
    if-eqz p1, :cond_1

    .line 261
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mCallNumber:Ljava/lang/String;

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    const-string v0, "MSimDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/MSimDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 132
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/MSimDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    .line 91
    const-string v4, "MSimDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mIntent:Landroid/content/Intent;

    invoke-static {v4, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 94
    const-string v4, "MSimDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MSimDialerActivity;->mNumber:Ljava/lang/String;

    .line 100
    :cond_0
    const/4 v2, 0x0

    .line 101
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 103
    .local v3, "phoneInCall":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/phone/MSimDialerActivity;->mPhoneCount:I

    if-ge v0, v4, :cond_1

    .line 104
    invoke-static {v0}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimDialerActivity;->isInCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 106
    .local v1, "inCall":Z
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 107
    const/4 v3, 0x1

    .line 112
    .end local v1    # "inCall":Z
    :cond_1
    if-eqz v3, :cond_3

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    move-result-object v4

    sget-object v5, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    if-eq v4, v5, :cond_3

    .line 114
    const-string v4, "MSimDialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subs ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/MSimDialerActivity;->startOutgoingCall(I)V

    .line 122
    :goto_1
    const-string v4, "MSimDialerActivity"

    const-string v5, "end of onResume()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 103
    .restart local v1    # "inCall":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "inCall":Z
    :cond_3
    const-string v4, "MSimDialerActivity"

    const-string v5, "launch dsdsdialer"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/phone/MSimDialerActivity;->launchMSDialer()V

    goto :goto_1
.end method
