.class Lcom/android/phone/MSimCallFeaturesSubSetting$2;
.super Ljava/lang/Object;
.source "MSimCallFeaturesSubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimCallFeaturesSubSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    iput-object p2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "ip_prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-virtual {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->IPCALL_PREFIX:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I
    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$200(Lcom/android/phone/MSimCallFeaturesSubSetting;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0d0335

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 510
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    invoke-virtual {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onResume()V

    .line 511
    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->this$0:Lcom/android/phone/MSimCallFeaturesSubSetting;

    # getter for: Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->access$300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
