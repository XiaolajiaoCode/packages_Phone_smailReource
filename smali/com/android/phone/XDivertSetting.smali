.class public Lcom/android/phone/XDivertSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "XDivertSetting.java"


# instance fields
.field private mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v3, 0x7f060019

    invoke-virtual {p0, v3}, Lcom/android/phone/XDivertSetting;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/XDivertSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "Line1Numbers"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "numbers":[Ljava/lang/String;
    const-string v3, "XDivertSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate numbers = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/XDivertSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 56
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v3, "xdivert_checkbox"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/XDivertCheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/XDivertSetting;->mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;

    .line 57
    iget-object v3, p0, Lcom/android/phone/XDivertSetting;->mXDivertButton:Lcom/android/phone/XDivertCheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v1}, Lcom/android/phone/XDivertCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z[Ljava/lang/String;)V

    .line 58
    return-void
.end method
