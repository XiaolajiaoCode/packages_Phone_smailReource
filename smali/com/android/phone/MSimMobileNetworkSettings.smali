.class public Lcom/android/phone/MSimMobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MSimMobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 305
    new-instance v0, Lcom/android/phone/MSimMobileNetworkSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MSimMobileNetworkSettings$1;-><init>(Lcom/android/phone/MSimMobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSimMobileNetworkSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/MSimMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimMobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimMobileNetworkSettings;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->setScreenState()V

    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 302
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v0, "MSimMobileNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method private setScreenState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 291
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->isAirplaneModeOn()Z

    move-result v0

    .line 292
    .local v0, "airplane":Z
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->isSubActivated()Z

    move-result v1

    .line 293
    .local v1, "bValidSimstate":Z
    iget-object v5, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 295
    return-void

    :cond_0
    move v2, v4

    .line 293
    goto :goto_0

    :cond_1
    move v3, v4

    .line 294
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 104
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 106
    iput-boolean v1, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mOkClicked:Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 183
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const v7, 0x7f060010

    invoke-virtual {p0, v7}, Lcom/android/phone/MSimMobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 187
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    check-cast v7, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/MSimPhoneGlobals;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 192
    .local v6, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v7, "button_data_enabled_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 193
    const-string v7, "button_roaming_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 194
    const-string v7, "cdma_lte_data_service_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 196
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    if-ne v7, v8, :cond_3

    move v2, v8

    .line 198
    .local v2, "isLteOnCdma":Z
    :goto_0
    const-string v7, "button_settings_manage_sub"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 200
    .local v4, "manageSub":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "PACKAGE"

    const-string v10, "com.android.phone"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v7, "TARGET_CLASS"

    const-string v10, "com.android.phone.MSimMobileNetworkSubSettings"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v7, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 210
    .local v5, "missingDataServiceUrl":Z
    if-eqz v2, :cond_1

    if-eqz v5, :cond_4

    .line 211
    :cond_1
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 217
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "connectivity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mConnManager:Landroid/net/ConnectivityManager;

    .line 225
    new-instance v7, Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v9}, Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;-><init>(Lcom/android/phone/MSimMobileNetworkSettings;Lcom/android/phone/MSimMobileNetworkSettings$1;)V

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mReceiver:Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;

    .line 226
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v3, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mReceiver:Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/android/phone/MSimMobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "mobile_data"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "isLteOnCdma":Z
    .end local v3    # "mIntentFilter":Landroid/content/IntentFilter;
    .end local v4    # "manageSub":Landroid/preference/PreferenceScreen;
    .end local v5    # "missingDataServiceUrl":Z
    :cond_3
    move v2, v9

    .line 196
    goto :goto_0

    .line 213
    .restart local v2    # "isLteOnCdma":Z
    .restart local v4    # "manageSub":Landroid/preference/PreferenceScreen;
    .restart local v5    # "missingDataServiceUrl":Z
    :cond_4
    const-string v7, "MSimMobileNetworkSettings"

    const-string v10, "keep ltePref"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mReceiver:Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimMobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mMobileStateForSingleCardChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 273
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 320
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->finish()V

    .line 333
    const/4 v1, 0x1

    .line 335
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 265
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 127
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_1

    .line 128
    const-string v8, "onPreferenceTreeClick: preference = mButtonDataRoam"

    invoke-static {v8}, Lcom/android/phone/MSimMobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 131
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 133
    iput-boolean v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mOkClicked:Z

    .line 134
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getResources()Landroid/content/res/Resources;

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

    iput-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 141
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    :goto_0
    return v6

    .line 143
    :cond_0
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v8, :cond_2

    .line 147
    const-string v7, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v7}, Lcom/android/phone/MSimMobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 148
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/phone/MSimMobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 151
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 153
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    iget-object v8, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_6

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "setup_prepaid_data_service_url"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "tmpl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 157
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/phone/MSimMobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 159
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 161
    const-string v1, ""

    .line 163
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x0

    .line 165
    .local v5, "url":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimMobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    new-array v8, v6, [Ljava/lang/CharSequence;

    aput-object v1, v8, v7

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 168
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v7, "MSimMobileNetworkSettings"

    const-string v8, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v4    # "tmpl":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v6, v7

    .line 177
    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 244
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimMobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 247
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 255
    invoke-direct {p0}, Lcom/android/phone/MSimMobileNetworkSettings;->setScreenState()V

    .line 257
    return-void
.end method
