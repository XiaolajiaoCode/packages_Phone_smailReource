.class public Lcom/android/phone/MSimMobileNetworkSubSettings;
.super Landroid/preference/PreferenceActivity;
.source "MSimMobileNetworkSubSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimMobileNetworkSubSettings$1;,
        Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscription:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 772
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .param p1, "NetworkMode"    # I

    .prologue
    const v1, 0x7f0d00e4

    .line 564
    packed-switch p1, :pswitch_data_0

    .line 667
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 670
    :goto_0
    return-void

    .line 566
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00d8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 570
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00d9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 574
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00da

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 578
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 582
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 589
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00dd

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 584
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00dc

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 595
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00de

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 599
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 603
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 607
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 611
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 615
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 619
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 623
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 627
    :pswitch_e
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 631
    :pswitch_f
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 635
    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 639
    :pswitch_11
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00e9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 643
    :pswitch_12
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 647
    :pswitch_13
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 651
    :pswitch_14
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00ec

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 655
    :pswitch_15
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 659
    :pswitch_16
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00ef

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 663
    :pswitch_17
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0d00ee

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 582
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MSimMobileNetworkSubSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimMobileNetworkSubSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->setPreferredNetworkMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimMobileNetworkSubSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MSimMobileNetworkSubSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/MSimMobileNetworkSubSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/MSimMobileNetworkSubSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MSimMobileNetworkSubSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->setScreenState()V

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 5

    .prologue
    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    iget v4, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-static {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 454
    .local v0, "nwMode":I
    :goto_0
    return v0

    .line 450
    .end local v0    # "nwMode":I
    :catch_0
    move-exception v1

    .line 451
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v2}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    .restart local v0    # "nwMode":I
    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 798
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSubActivated()Z
    .locals 2

    .prologue
    .line 802
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string v0, "MSimMobileNetworkSubSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method private multiSimGetDataRoaming(I)Z
    .locals 4
    .param p1, "sub"    # I

    .prologue
    const/4 v0, 0x0

    .line 720
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_roaming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 722
    .local v0, "enabled":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Data Roaming for SUB-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 723
    return v0
.end method

.method private multiSimGetMobileData(I)Z
    .locals 4
    .param p1, "sub"    # I

    .prologue
    const/4 v0, 0x0

    .line 745
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 747
    .local v0, "enabled":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Mobile Data for SUB-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 748
    return v0
.end method

.method private multiSimSetDataRoaming(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "sub"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_roaming"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Data Roaming for SUB-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Data Roaming for DDS-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void

    .line 729
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private multiSimSetMobileData(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "sub"    # I

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Mobile Data for SUB-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 759
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 761
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 763
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Mobile Data for DDS-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 766
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    return-void

    .line 754
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPreferredNetworkMode(I)V
    .locals 3
    .param p1, "nwMode"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    iget v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-static {v0, v1, v2, p1}, Landroid/telephony/MSimTelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 462
    return-void
.end method

.method private setScreenState()V
    .locals 4

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->isAirplaneModeOn()Z

    move-result v0

    .line 792
    .local v0, "airplane":Z
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->isSubActivated()Z

    move-result v1

    .line 793
    .local v1, "bValidSimstate":Z
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 794
    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsOptions;->enableScreen()V

    .line 795
    :cond_0
    return-void

    .line 793
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 674
    packed-switch p1, :pswitch_data_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 676
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 678
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 122
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 124
    iget v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-direct {p0, v1, v0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->multiSimSetDataRoaming(ZI)V

    .line 125
    iput-boolean v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mOkClicked:Z

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 223
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 226
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    const v7, 0x7f060011

    invoke-virtual {p0, v7}, Lcom/android/phone/MSimMobileNetworkSubSettings;->addPreferencesFromResource(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v10, "subscription"

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Settings onCreate subscription ="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 230
    iget v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-virtual {v1, v7}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 231
    new-instance v7, Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;

    invoke-direct {v7, p0, v12}, Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;-><init>(Lcom/android/phone/MSimMobileNetworkSubSettings;Lcom/android/phone/MSimMobileNetworkSubSettings$1;)V

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mHandler:Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 244
    .local v5, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v7, "button_data_enabled_key"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 246
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    const-string v7, "preferred_network_mode_key"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 251
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    if-ne v7, v8, :cond_1

    move v3, v8

    .line 252
    .local v3, "isLteOnCdma":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0a0002

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-ne v7, v8, :cond_2

    .line 253
    const-string v7, "onCreate world_phone is true"

    invoke-static {v7}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 256
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferredNetworkMode()I

    move-result v6

    .line 260
    .local v6, "settingsNetworkMode":I
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 261
    new-instance v7, Lcom/android/phone/CdmaOptions;

    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v7, p0, v5, v8}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 262
    new-instance v7, Lcom/android/phone/GsmUmtsOptions;

    iget v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-direct {v7, p0, v5, v8}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 321
    .end local v6    # "settingsNetworkMode":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 322
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 356
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    new-instance v7, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;

    invoke-direct {v7, p0, v12}, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimMobileNetworkSubSettings;Lcom/android/phone/MSimMobileNetworkSubSettings$1;)V

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/android/phone/MSimMobileNetworkSubSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "isLteOnCdma":Z
    :cond_1
    move v3, v9

    .line 251
    goto :goto_0

    .line 271
    .restart local v3    # "isLteOnCdma":Z
    :cond_2
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 272
    .local v4, "phoneType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate phoneType="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "; isLteOnCdma="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 273
    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    .line 274
    new-instance v7, Lcom/android/phone/CdmaOptions;

    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v7, p0, v5, v8}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 287
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f0d00f3

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 289
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f0d00f5

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 291
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f070017

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 293
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f070018

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 314
    :goto_2
    iget v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    if-nez v7, :cond_5

    .line 315
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 297
    :cond_3
    if-ne v4, v8, :cond_4

    .line 298
    new-instance v7, Lcom/android/phone/GsmUmtsOptions;

    iget v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-direct {v7, p0, v5, v8}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 300
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f0d00f0

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 302
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f0d00f2

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 304
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f070015

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 306
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v8, 0x7f070016

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_2

    .line 310
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected phone type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 317
    :cond_5
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 403
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 697
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 698
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->finish()V

    .line 711
    const/4 v1, 0x1

    .line 713
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 395
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 396
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 415
    iget-object v3, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 418
    iget-object v4, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 420
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    .local v0, "buttonNetworkMode":I
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferredNetworkMode()I

    move-result v2

    .line 422
    .local v2, "settingsNetworkMode":I
    if-eq v0, v2, :cond_1

    .line 423
    move v1, v0

    .line 425
    .local v1, "modemNetworkMode":I
    if-ltz v1, :cond_0

    const/16 v3, 0x16

    if-le v1, v3, :cond_2

    .line 427
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network Mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Chosen. Ignore mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 440
    .end local v0    # "buttonNetworkMode":I
    .end local v1    # "modemNetworkMode":I
    .end local v2    # "settingsNetworkMode":I
    :cond_1
    :goto_0
    return v5

    .line 431
    .restart local v0    # "buttonNetworkMode":I
    .restart local v1    # "modemNetworkMode":I
    .restart local v2    # "settingsNetworkMode":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 432
    invoke-direct {p0, v0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->setPreferredNetworkMode(I)V

    .line 434
    iget-object v3, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mHandler:Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 147
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v8

    if-ne v8, v6, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v6

    .line 150
    :cond_1
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_3

    .line 152
    const-string v8, "onPreferenceTreeClick: preference = mButtonDataRoam"

    invoke-static {v8}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 155
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 157
    iput-boolean v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mOkClicked:Z

    .line 158
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00fc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1010355

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    invoke-virtual {v7, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 167
    :cond_2
    iget v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-direct {p0, v7, v8}, Lcom/android/phone/MSimMobileNetworkSubSettings;->multiSimSetDataRoaming(ZI)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_4

    .line 172
    const-string v7, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v7}, Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V

    .line 173
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    iget v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-direct {p0, v7, v8}, Lcom/android/phone/MSimMobileNetworkSubSettings;->multiSimSetMobileData(ZI)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v8, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v8

    if-ne v8, v6, :cond_5

    .line 177
    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    iput-object p2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 183
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v7, v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v8, 0x11

    invoke-virtual {p0, v7, v8}, Lcom/android/phone/MSimMobileNetworkSubSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 188
    :cond_5
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v8, :cond_6

    .line 190
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferredNetworkMode()I

    move-result v2

    .line 191
    .local v2, "settingsNetworkMode":I
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v2    # "settingsNetworkMode":I
    :cond_6
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_a

    .line 194
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "setup_prepaid_data_service_url"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "tmpl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 197
    const-string v8, "phone_msim"

    invoke-virtual {p0, v8}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/MSimTelephonyManager;

    .line 199
    .local v3, "tm":Landroid/telephony/MSimTelephonyManager;
    iget v8, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-virtual {v3, v8}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 201
    const-string v0, ""

    .line 203
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 205
    .local v5, "url":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 203
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :cond_8
    new-array v8, v6, [Ljava/lang/CharSequence;

    aput-object v0, v8, v7

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 208
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/MSimTelephonyManager;
    :cond_9
    const-string v7, "MSimMobileNetworkSubSettings"

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v4    # "tmpl":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v6, v7

    .line 217
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 372
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 374
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->setScreenState()V

    .line 381
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-direct {p0, v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->multiSimGetMobileData(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I

    invoke-direct {p0, v1}, Lcom/android/phone/MSimMobileNetworkSubSettings;->multiSimGetDataRoaming(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSubSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mHandler:Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimMobileNetworkSubSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->enableScreen()V

    .line 391
    :cond_3
    return-void
.end method
