.class public Lcom/android/phone/SetSubscription;
.super Landroid/preference/PreferenceActivity;
.source "SetSubscription.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

.field private final EVENT_SET_SUBSCRIPTION_DONE:I

.field private final EVENT_SIM_STATE_CHANGED:I

.field private final MAX_SUBSCRIPTIONS:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

.field private mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

.field mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

.field private mHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/TextView;

.field private mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

.field private mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

.field subArray:[Landroid/preference/CheckBoxPreference;

.field private subErr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 86
    sget v0, Lcom/codeaurora/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    iput v0, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/SetSubscription;->EVENT_SET_SUBSCRIPTION_DONE:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/SetSubscription;->EVENT_SIM_STATE_CHANGED:I

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/SetSubscription;->DIALOG_SET_SUBSCRIPTION_IN_PROGRESS:I

    .line 287
    new-instance v0, Lcom/android/phone/SetSubscription$3;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$3;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 475
    new-instance v0, Lcom/android/phone/SetSubscription$6;

    invoke-direct {v0, p0}, Lcom/android/phone/SetSubscription$6;-><init>(Lcom/android/phone/SetSubscription;)V

    iput-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SetSubscription;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SetSubscription;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/SetSubscription;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SetSubscription;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SetSubscription;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SetSubscription;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SetSubscription;)Lcom/codeaurora/telephony/msim/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SetSubscription;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SetSubscription;)[Lcom/codeaurora/telephony/msim/SubscriptionData;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SetSubscription;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SetSubscription;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SetSubscription;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    return-void
.end method

.method private displayErrorDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 454
    const-string v0, "SetSubscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMutipleDeactivate(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d031b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SetSubscription$5;

    invoke-direct {v2, p0}, Lcom/android/phone/SetSubscription$5;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SetSubscription$4;

    invoke-direct {v1, p0}, Lcom/android/phone/SetSubscription$4;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 473
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isFailed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 539
    const-string v0, "SetSubscription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFailed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "DEACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACTIVATE FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    const/4 v0, 0x1

    .line 548
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneInCall()Z
    .locals 3

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, "phoneInCall":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_0

    .line 440
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    const/4 v1, 0x1

    .line 446
    :cond_0
    return v1

    .line 439
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyNewCardAvailable()V
    .locals 3

    .prologue
    .line 178
    const-string v0, "SetSubscription"

    const-string v1, "notifyNewCardAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d031a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d031b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/SetSubscription$2;

    invoke-direct {v2, p0}, Lcom/android/phone/SetSubscription$2;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SetSubscription$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SetSubscription$1;-><init>(Lcom/android/phone/SetSubscription;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    return-void
.end method

.method private populateList()V
    .locals 18

    .prologue
    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    const-string v16, "subscr_parent"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    .line 252
    .local v11, "prefParent":Landroid/preference/PreferenceScreen;
    const/4 v15, 0x3

    new-array v14, v15, [I

    fill-array-data v14, :array_0

    .line 254
    .local v14, "subGroupTitle":[I
    const-string v15, "SetSubscription"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "populateList:  mCardSubscrInfo.length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v7, 0x0

    .line 258
    .local v7, "k":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    .local v1, "arr$":[Lcom/codeaurora/telephony/msim/SubscriptionData;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v1    # "arr$":[Lcom/codeaurora/telephony/msim/SubscriptionData;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v3, v1, v6

    .line 259
    .local v3, "cardSub":Lcom/codeaurora/telephony/msim/SubscriptionData;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/codeaurora/telephony/msim/SubscriptionData;->getLength()I

    move-result v15

    if-lez v15, :cond_1

    .line 260
    const/4 v4, 0x0

    .line 263
    .local v4, "i":I
    new-instance v13, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 264
    .local v13, "subGroup":Landroid/preference/PreferenceCategory;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sub_group_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 265
    aget v15, v14, v7

    invoke-virtual {v13, v15}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 266
    invoke-virtual {v11, v13}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    iget-object v2, v3, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    .local v2, "arr$":[Lcom/codeaurora/telephony/msim/Subscription;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v12, v2, v5

    .line 270
    .local v12, "sub":Lcom/codeaurora/telephony/msim/Subscription;
    if-eqz v12, :cond_0

    iget-object v15, v12, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 271
    const-string v15, "SetSubscription"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "populateList:  mCardSubscrInfo["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "].subscription["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v10, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 274
    .local v10, "newCheckBox":Landroid/preference/CheckBoxPreference;
    iget-object v15, v12, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v12, Lcom/codeaurora/telephony/msim/Subscription;->appType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v15, Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "slot"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " index"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/SetSubscription;->mCheckBoxListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v10, v15}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 278
    invoke-virtual {v13, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    .end local v10    # "newCheckBox":Landroid/preference/CheckBoxPreference;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 269
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 283
    .end local v2    # "arr$":[Lcom/codeaurora/telephony/msim/Subscription;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "sub":Lcom/codeaurora/telephony/msim/Subscription;
    .end local v13    # "subGroup":Landroid/preference/PreferenceCategory;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 258
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto/16 :goto_0

    .line 285
    .end local v3    # "cardSub":Lcom/codeaurora/telephony/msim/SubscriptionData;
    :cond_2
    return-void

    .line 252
    :array_0
    .array-data 4
        0x7f0d0300
        0x7f0d0301
        0x7f0d0302
    .end array-data
.end method

.method private setSubscription()V
    .locals 17

    .prologue
    .line 319
    const-string v13, "SetSubscription"

    const-string v14, "setSubscription"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, "numSubSelected":I
    const/4 v1, 0x0

    .line 323
    .local v1, "deactRequiredCount":I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 325
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    array-length v13, v13

    if-ge v2, v13, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    aget-object v13, v13, v2

    if-eqz v13, :cond_0

    .line 327
    add-int/lit8 v4, v4, 0x1

    .line 325
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_1
    const-string v13, "SetSubscription"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setSubscription: numSubSelected = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-nez v4, :cond_2

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0d0309

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 338
    .local v12, "toast":Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 435
    .end local v12    # "toast":Landroid/widget/Toast;
    :goto_1
    return-void

    .line 339
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->isPhoneInCall()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 342
    const v13, 0x7f0d031d

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/SetSubscription;->displayErrorDialog(I)V

    goto :goto_1

    .line 344
    :cond_3
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    if-ge v2, v13, :cond_a

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    aget-object v13, v13, v2

    if-nez v13, :cond_5

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_4

    .line 348
    const-string v13, "SetSubscription"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setSubscription: Sub "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not selected. Setting 99999"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 356
    add-int/lit8 v1, v1, 0x1

    .line 344
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 361
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "key":Ljava/lang/String;
    const-string v13, "SetSubscription"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setSubscription: key = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, "splitKey":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v9, v13

    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string v15, "slot"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "sSlotId":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 366
    .local v8, "slotId":I
    const/4 v13, 0x1

    aget-object v13, v9, v13

    const/4 v14, 0x1

    aget-object v14, v9, v14

    const-string v15, "index"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x5

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "sIndexId":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 369
    .local v10, "subIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    aget-object v13, v13, v8

    if-nez v13, :cond_6

    .line 370
    const-string v13, "SetSubscription"

    const-string v14, "setSubscription: mCardSubscrInfo is not in sync with SubscriptionManager"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->m3gppIndex:I

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    const v14, 0x1869f

    iput v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->m3gpp2Index:I

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_4

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 389
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    aget-object v14, v14, v8

    iget-object v14, v14, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v14, v14, v10

    invoke-virtual {v13, v14}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput v2, v13, Lcom/codeaurora/telephony/msim/Subscription;->subId:I

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    if-eqz v13, :cond_9

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v11, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 397
    .local v11, "subStatus":Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iput-object v11, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 398
    sget-object v13, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v11, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v14, v14, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Lcom/codeaurora/telephony/msim/Subscription;->equals(Lcom/codeaurora/telephony/msim/Subscription;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 401
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    .line 405
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v13, v14, :cond_4

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 412
    .end local v11    # "subStatus":Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v13, v13, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v13, v13, v2

    sget-object v14, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v14, v13, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    goto/16 :goto_3

    .line 418
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "sIndexId":Ljava/lang/String;
    .end local v7    # "sSlotId":Ljava/lang/String;
    .end local v8    # "slotId":I
    .end local v9    # "splitKey":[Ljava/lang/String;
    .end local v10    # "subIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    if-lt v1, v13, :cond_b

    .line 419
    const v13, 0x7f0d031c

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/SetSubscription;->displayErrorDialog(I)V

    goto/16 :goto_1

    .line 421
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    invoke-virtual {v13, v14}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setSubscription(Lcom/codeaurora/telephony/msim/SubscriptionData;)Z

    move-result v5

    .line 422
    .local v5, "ret":Z
    if-eqz v5, :cond_c

    .line 423
    const/16 v13, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 428
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/SetSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0d0319

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 431
    .restart local v12    # "toast":Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method private updateCheckBoxes()V
    .locals 11

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "subscr_parent"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 202
    .local v5, "prefParent":Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub_group_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 205
    .local v7, "subGroup":Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_0

    .line 206
    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 207
    .local v1, "count":I
    const-string v8, "SetSubscription"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCheckBoxes count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 209
    invoke-virtual {v7, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 211
    .local v0, "checkBoxPref":Landroid/preference/CheckBoxPreference;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "checkBoxPref":Landroid/preference/CheckBoxPreference;
    .end local v1    # "count":I
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v7    # "subGroup":Landroid/preference/PreferenceCategory;
    :cond_1
    new-instance v8, Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget v9, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    invoke-direct {v8, v9}, Lcom/codeaurora/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    .line 217
    const/4 v2, 0x0

    :goto_2
    iget v8, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    if-ge v2, v8, :cond_2

    .line 218
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v8, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/codeaurora/telephony/msim/Subscription;

    move-result-object v6

    .line 219
    .local v6, "sub":Lcom/codeaurora/telephony/msim/Subscription;
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v8, v8, v2

    invoke-virtual {v8, v6}, Lcom/codeaurora/telephony/msim/Subscription;->copyFrom(Lcom/codeaurora/telephony/msim/Subscription;)Lcom/codeaurora/telephony/msim/Subscription;

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 222
    .end local v6    # "sub":Lcom/codeaurora/telephony/msim/Subscription;
    :cond_2
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    if-eqz v8, :cond_5

    .line 223
    const/4 v2, 0x0

    :goto_3
    iget v8, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    if-ge v2, v8, :cond_4

    .line 224
    const-string v8, "SetSubscription"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCheckBoxes: mCurrentSelSub.subscription["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v10, v10, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x0

    aput-object v9, v8, v2

    .line 227
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/codeaurora/telephony/msim/Subscription;->subStatus:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/codeaurora/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_3

    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/codeaurora/telephony/msim/Subscription;->getAppIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "key":Ljava/lang/String;
    const-string v8, "SetSubscription"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCheckBoxes: key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sub_group_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/codeaurora/telephony/msim/SubscriptionData;->subscription:[Lcom/codeaurora/telephony/msim/Subscription;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/codeaurora/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 236
    .restart local v7    # "subGroup":Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_3

    .line 237
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 239
    .restart local v0    # "checkBoxPref":Landroid/preference/CheckBoxPreference;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    aput-object v0, v8, v2

    .line 223
    .end local v0    # "checkBoxPref":Landroid/preference/CheckBoxPreference;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "subGroup":Landroid/preference/PreferenceCategory;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 244
    :cond_4
    iget-object v8, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v9, p0, Lcom/android/phone/SetSubscription;->mCurrentSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    invoke-virtual {v8, v9}, Lcom/codeaurora/telephony/msim/SubscriptionData;->copyFrom(Lcom/codeaurora/telephony/msim/SubscriptionData;)Lcom/codeaurora/telephony/msim/SubscriptionData;

    .line 246
    :cond_5
    return-void
.end method


# virtual methods
.method displayAlertDialog([Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 572
    const/4 v4, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 573
    .local v2, "resSubId":[I
    const-string v0, ""

    .line 574
    .local v0, "dispMsg":Ljava/lang/String;
    const v3, 0x7f0d030f

    .line 576
    .local v3, "title":I
    aget-object v4, p1, v6

    if-eqz v4, :cond_0

    aget-object v4, p1, v6

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 577
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 579
    :cond_0
    aget-object v4, p1, v5

    if-eqz v4, :cond_1

    aget-object v4, p1, v5

    invoke-direct {p0, v4}, Lcom/android/phone/SetSubscription;->isFailed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    iput-boolean v5, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    .line 583
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 584
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    .line 585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/phone/SetSubscription;->setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_3
    iget-boolean v4, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v4, :cond_4

    .line 591
    const v3, 0x7f0d030e

    .line 594
    :cond_4
    const-string v4, "SetSubscription"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayAlertDialog:  dispMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 601
    return-void

    .line 572
    nop

    :array_0
    .array-data 4
        0x7f0d0310
        0x7f0d0311
        0x7f0d0312
    .end array-data
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 621
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->setSubscription()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "NOTIFY_NEW_CARD_AVAILABLE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 96
    .local v2, "newCardNotify":Z
    if-nez v2, :cond_0

    .line 97
    const v3, 0x1030005

    invoke-virtual {p0, v3}, Lcom/android/phone/SetSubscription;->setTheme(I)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 102
    invoke-static {}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    .line 104
    if-eqz v2, :cond_2

    .line 105
    const-string v3, "SetSubscription"

    const-string v4, "onCreate: Notify new cards are available!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->notifyNewCardAvailable()V

    .line 145
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/phone/SetSubscription;Lcom/android/phone/SetSubscription$1;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/SetSubscription;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void

    .line 109
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget v3, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    new-array v3, v3, [Lcom/codeaurora/telephony/msim/SubscriptionData;

    iput-object v3, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    if-ge v0, v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget-object v4, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v4, v0}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/codeaurora/telephony/msim/SubscriptionData;

    move-result-object v4

    aput-object v4, v3, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_3
    const v3, 0x7f060014

    invoke-virtual {p0, v3}, Lcom/android/phone/SetSubscription;->addPreferencesFromResource(I)V

    .line 115
    const v3, 0x7f04002e

    invoke-virtual {p0, v3}, Lcom/android/phone/SetSubscription;->setContentView(I)V

    .line 117
    const v3, 0x7f080050

    invoke-virtual {p0, v3}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    .line 118
    iget-object v3, p0, Lcom/android/phone/SetSubscription;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lcom/android/phone/SetSubscription;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    .line 120
    iget-object v3, p0, Lcom/android/phone/SetSubscription;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget v3, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    new-array v3, v3, [Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/SetSubscription;->subArray:[Landroid/preference/CheckBoxPreference;

    .line 126
    iget-object v3, p0, Lcom/android/phone/SetSubscription;->mCardSubscrInfo:[Lcom/codeaurora/telephony/msim/SubscriptionData;

    if-eqz v3, :cond_4

    .line 127
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->populateList()V

    .line 129
    new-instance v3, Lcom/codeaurora/telephony/msim/SubscriptionData;

    iget v4, p0, Lcom/android/phone/SetSubscription;->MAX_SUBSCRIPTIONS:I

    invoke-direct {v3, v4}, Lcom/codeaurora/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v3, p0, Lcom/android/phone/SetSubscription;->mUserSelSub:Lcom/codeaurora/telephony/msim/SubscriptionData;

    .line 131
    invoke-direct {p0}, Lcom/android/phone/SetSubscription;->updateCheckBoxes()V

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    iget-object v4, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->registerForSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    iget-object v3, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v3}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSetSubscriptionInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const-string v3, "SetSubscription"

    const-string v4, "onCreate: SetSubscription is in progress when started this activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/android/phone/SetSubscription;->showDialog(I)V

    .line 141
    iget-object v3, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v4, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    :cond_4
    const-string v3, "SetSubscription"

    const-string v4, "onCreate: Card info not available: mCardSubscrInfo == NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 518
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 519
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d030d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 522
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 527
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mCardSubscriptionManager:Lcom/codeaurora/telephony/msim/CardSubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/codeaurora/telephony/msim/CardSubscriptionManager;->unRegisterForSimStateChanged(Landroid/os/Handler;)V

    .line 169
    iget-object v0, p0, Lcom/android/phone/SetSubscription;->mSubscriptionManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/SetSubscription;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V

    .line 170
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/phone/SetSubscription;->subErr:Z

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->finish()V

    .line 610
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 532
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 537
    :cond_0
    return-void
.end method

.method setSubscriptionStatusToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "retStr":Ljava/lang/String;
    const-string v1, "ACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0313

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    :cond_0
    :goto_0
    return-object v0

    .line 555
    :cond_1
    const-string v1, "DEACTIVATE SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0314

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 557
    :cond_2
    const-string v1, "DEACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_3
    const-string v1, "DEACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_4
    const-string v1, "ACTIVATE FAILED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 562
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0315

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_5
    const-string v1, "ACTIVATE NOT SUPPORTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 564
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_6
    const-string v1, "NO CHANGE IN SUBSCRIPTION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/android/phone/SetSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
