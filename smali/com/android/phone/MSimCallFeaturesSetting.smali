.class public Lcom/android/phone/MSimCallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "MSimCallFeaturesSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonProximity:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mButtonXDivert:Landroid/preference/PreferenceScreen;

.field private mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

.field private mDialpadAutocomplete:Landroid/preference/CheckBoxPreference;

.field private mEmergencyCall:Landroid/preference/PreferenceScreen;

.field private mForeground:Z

.field private mNumPhones:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private displayAlertDialog(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 416
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

    new-instance v2, Lcom/android/phone/MSimCallFeaturesSetting$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MSimCallFeaturesSetting$2;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MSimCallFeaturesSetting$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MSimCallFeaturesSetting$1;-><init>(Lcom/android/phone/MSimCallFeaturesSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 430
    return-void
.end method

.method private handleCallConnectVibrateChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 552
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 553
    .local v0, "isEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCallConnectVibrateChange() display is enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_connect_vibrate"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    return-void

    .line 553
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 554
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 595
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 599
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 566
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 567
    .local v0, "buttonTtyMode":I
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 570
    .local v1, "settingsTtyMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 573
    if-eq v0, v1, :cond_0

    .line 574
    packed-switch v0, :pswitch_data_0

    .line 583
    const/4 v0, 0x0

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 588
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v2, "ttyModeChanged":Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimCallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 592
    .end local v2    # "ttyModeChanged":Landroid/content/Intent;
    :cond_0
    return-void

    .line 579
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAllSubActive()Z
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v1, v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 360
    :goto_1
    return v1

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isAnySubCdma()Z
    .locals 4

    .prologue
    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 365
    invoke-static {}, Lcom/android/phone/MSimPhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 366
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 368
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return v2

    .line 364
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isValidLine1Number([Ljava/lang/String;)Z
    .locals 2
    .param p1, "line1Numbers"    # [Ljava/lang/String;

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 373
    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 375
    :goto_1
    return v1

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string v0, "MSimCallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method private processXDivert()V
    .locals 6

    .prologue
    .line 379
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    new-array v1, v0, [Ljava/lang/String;

    .line 381
    const-string v0, "MSimCallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumPhones:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 383
    invoke-static {}, Lcom/android/phone/MSimPhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 384
    const-string v3, "MSimCallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone.getLine1Number():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 386
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 389
    :cond_0
    const-string v3, "MSimCallFeaturesSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SUB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phonetype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isSubActive = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    invoke-virtual {v4, v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " line1Number = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 394
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->isAllSubActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    const v0, 0x7f0d023b

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->displayAlertDialog(I)V

    .line 413
    :goto_1
    return-void

    .line 398
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->isAnySubCdma()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    const v0, 0x7f0d0238

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->displayAlertDialog(I)V

    goto :goto_1

    .line 402
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->isValidLine1Number([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    const-class v1, Lcom/android/phone/XDivertPhoneNumbers;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 411
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSetting;->processXDivertCheckBox([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processXDivertCheckBox([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 433
    const-string v0, "MSimCallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processXDivertCheckBox line1Numbers = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    const-class v1, Lcom/android/phone/XDivertSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    const-string v1, "Line1Numbers"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method private updateCallConnectVibrateCheckbox()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConnectVibrateCheckbox() should check "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_connect_vibrate"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_connect_vibrate"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 549
    return-void

    .line 543
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 546
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .param p1, "TtyMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "txts":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 612
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 613
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 615
    :goto_0
    return-void

    .line 609
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 226
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate(). Intent: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 230
    const v5, 0x7f06000d

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 232
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 234
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mSubManager:Lcom/codeaurora/telephony/msim/SubscriptionManager;

    .line 237
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 239
    .local v3, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v5, "button_play_dtmf_tone"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 240
    const-string v5, "button_dialpad_autocomplete"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mDialpadAutocomplete:Landroid/preference/CheckBoxPreference;

    .line 241
    const-string v5, "button_dtmf_settings"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 242
    const-string v5, "button_auto_retry_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 243
    const-string v5, "button_proximity_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    .line 244
    const-string v5, "button_hac_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 245
    const-string v5, "button_tty_mode_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 246
    const-string v5, "button_xdivert"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    .line 247
    const-string v5, "duration_enable_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    .line 249
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 250
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "emergency_call_list"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mEmergencyCall:Landroid/preference/PreferenceScreen;

    .line 252
    const-string v5, "call_connect_vibrate_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

    .line 253
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 254
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 255
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    :cond_0
    const-string v5, "persist.env.phone.ecclist"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 259
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mEmergencyCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    .line 263
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v5, "dtmf_tone"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 265
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    :cond_2
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mDialpadAutocomplete:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    .line 269
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mDialpadAutocomplete:Landroid/preference/CheckBoxPreference;

    const-string v8, "dialpad_autocomplete"

    invoke-static {v1, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    :cond_3
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v5, :cond_4

    .line 282
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    iput-object v9, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 286
    :cond_4
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    .line 287
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 288
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_f

    .line 296
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 302
    :goto_3
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_6

    .line 303
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 305
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 313
    :cond_6
    :goto_4
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v5, :cond_7

    .line 320
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    iput-object v9, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 327
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 328
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_8

    .line 330
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 333
    :cond_8
    const-string v5, "button_call_independent_serv"

    invoke-virtual {p0, v5}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 334
    .local v4, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_9

    .line 335
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 336
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "PACKAGE"

    const-string v6, "com.android.phone"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v5, "TARGET_CLASS"

    const-string v6, "com.android.phone.MSimCallFeaturesSubSetting"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    iput v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mNumPhones:I

    .line 344
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_a

    .line 346
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    iput-object v9, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    .line 351
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_b

    .line 352
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    :cond_b
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v4    # "selectSub":Landroid/preference/PreferenceScreen;
    :cond_c
    move v5, v7

    .line 263
    goto/16 :goto_0

    :cond_d
    move v6, v7

    .line 269
    goto/16 :goto_1

    .line 290
    :cond_e
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    iput-object v9, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto :goto_2

    .line 298
    :cond_f
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    iput-object v9, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    goto :goto_3

    .line 307
    :cond_10
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    iput-object v9, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 623
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 624
    .local v1, "itemId":I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 625
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.dialer"

    const-string v3, "com.android.dialer.DialtactsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->finish()V

    .line 630
    const/4 v2, 0x1

    .line 632
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MSimCallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 186
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dtmf_tone_type"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return v3

    .line 188
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_5

    .line 191
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 192
    .local v0, "checked":Z
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "proximity_sensor"

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    const v2, 0x7f0d018e

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    :cond_4
    const v2, 0x7f0d018f

    goto :goto_1

    .line 196
    .end local v0    # "checked":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 197
    invoke-direct {p0, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_9

    .line 199
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 200
    .restart local v0    # "checked":Z
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_call_duration"

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    const v2, 0x7f0d0362

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    :cond_8
    const v2, 0x7f0d0363

    goto :goto_2

    .line 206
    .end local v0    # "checked":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_a

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSetting;->handleCallConnectVibrateChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_a
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    move v2, v3

    :cond_b
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mDialpadAutocomplete:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dialpad_autocomplete"

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mDialpadAutocomplete:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    move v1, v2

    .line 167
    goto :goto_0

    :cond_3
    move v1, v2

    .line 145
    goto :goto_1

    .line 147
    :cond_4
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 150
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_auto_retry"

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 154
    :cond_6
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 155
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 157
    .local v0, "hac":I
    :goto_2
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hearing_aid"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "HACSetting"

    if-eqz v0, :cond_8

    const-string v2, "ON"

    :goto_3
    invoke-virtual {v3, v4, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "hac":I
    :cond_7
    move v0, v2

    .line 155
    goto :goto_2

    .line 161
    .restart local v0    # "hac":I
    :cond_8
    const-string v2, "OFF"

    goto :goto_3

    .line 163
    .end local v0    # "hac":I
    :cond_9
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->processXDivert()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 476
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 477
    iput-boolean v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mForeground:Z

    .line 479
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 480
    const-string v10, "sip_settings_category_key"

    invoke-virtual {p0, v10}, Lcom/android/phone/MSimCallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 481
    .local v9, "sipSettings":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 482
    .local v7, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 483
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_9

    .line 484
    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 485
    .local v6, "pref":Landroid/preference/Preference;
    if-eq v6, v9, :cond_0

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 483
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 490
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v6    # "pref":Landroid/preference/Preference;
    .end local v7    # "screen":Landroid/preference/PreferenceScreen;
    .end local v9    # "sipSettings":Landroid/preference/Preference;
    :cond_1
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v10, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "dtmf_tone_type"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 493
    .local v3, "dtmf":I
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v10, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 496
    .end local v3    # "dtmf":I
    :cond_2
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_3

    .line 497
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "call_auto_retry"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 499
    .local v0, "autoretry":I
    iget-object v13, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    move v10, v11

    :goto_1
    invoke-virtual {v13, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 502
    .end local v0    # "autoretry":I
    :cond_3
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_4

    .line 503
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "proximity_sensor"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_b

    move v1, v11

    .line 505
    .local v1, "checked":Z
    :goto_2
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 506
    iget-object v13, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonProximity:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    const v10, 0x7f0d018e

    :goto_3
    invoke-virtual {v13, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 510
    .end local v1    # "checked":Z
    :cond_4
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_5

    .line 511
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "hearing_aid"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 512
    .local v4, "hac":I
    iget-object v13, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_d

    move v10, v11

    :goto_4
    invoke-virtual {v13, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 515
    .end local v4    # "hac":I
    :cond_5
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v10, :cond_6

    .line 516
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "preferred_tty_mode"

    invoke-static {v10, v13, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 519
    .local v8, "settingsTtyMode":I
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 523
    .end local v8    # "settingsTtyMode":I
    :cond_6
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_7

    .line 524
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->isAllSubActive()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mButtonXDivert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 527
    :cond_7
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_8

    .line 528
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "show_call_duration"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_e

    move v1, v11

    .line 530
    .restart local v1    # "checked":Z
    :goto_5
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 531
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mShowDurationCheckBox:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_f

    const v10, 0x7f0d0362

    :goto_6
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 535
    .end local v1    # "checked":Z
    :cond_8
    iget-object v10, p0, Lcom/android/phone/MSimCallFeaturesSetting;->mCallConnectVibrate:Landroid/preference/CheckBoxPreference;

    if-eqz v10, :cond_9

    .line 536
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSetting;->updateCallConnectVibrateCheckbox()V

    .line 539
    :cond_9
    return-void

    .restart local v0    # "autoretry":I
    :cond_a
    move v10, v12

    .line 499
    goto/16 :goto_1

    .end local v0    # "autoretry":I
    :cond_b
    move v1, v12

    .line 503
    goto :goto_2

    .line 506
    .restart local v1    # "checked":Z
    :cond_c
    const v10, 0x7f0d018f

    goto :goto_3

    .end local v1    # "checked":Z
    .restart local v4    # "hac":I
    :cond_d
    move v10, v12

    .line 512
    goto :goto_4

    .end local v4    # "hac":I
    :cond_e
    move v1, v12

    .line 528
    goto :goto_5

    .line 531
    .restart local v1    # "checked":Z
    :cond_f
    const v10, 0x7f0d0363

    goto :goto_6
.end method
