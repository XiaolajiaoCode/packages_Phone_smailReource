.class public Lcom/android/phone/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 60
    iput-object p2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 61
    iput-object p3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->create()V

    .line 63
    return-void
.end method

.method private deviceSupportsNvAndRuim()Z
    .locals 9

    .prologue
    .line 102
    const-string v7, "ril.subscription.types"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "subscriptionsSupported":Ljava/lang/String;
    const/4 v3, 0x0

    .line 104
    .local v3, "nvSupported":Z
    const/4 v4, 0x0

    .line 106
    .local v4, "ruimSupported":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 107
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 110
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 111
    .local v5, "subscriptionType":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 112
    const-string v7, "NV"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    const/4 v3, 0x1

    .line 115
    :cond_0
    const-string v7, "RUIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    const/4 v4, 0x1

    .line 110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "subscriptionType":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ruimSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 123
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected create()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 66
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 68
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "cdma_system_select_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 71
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "cdma_subscription_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    .line 74
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 75
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string v2, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 86
    .local v1, "voiceCapable":Z
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 87
    .local v0, "isLTE":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "cdma_activate_device_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_apn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 96
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    return-void

    .line 79
    .end local v0    # "isLTE":Z
    .end local v1    # "voiceCapable":Z
    :cond_2
    const-string v2, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "cdma_subscription_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 86
    .restart local v1    # "voiceCapable":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "CdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 135
    :goto_0
    return v0

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const-string v1, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
