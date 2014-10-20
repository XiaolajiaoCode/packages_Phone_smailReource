.class public Lcom/android/phone/MSimCallFeaturesSubSetting;
.super Landroid/preference/PreferenceActivity;
.source "MSimCallFeaturesSubSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field private static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mSubscription:I

.field private mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefEXPAND:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

.field private mSubscriptionPrefMOREEXPAND:Landroid/preference/PreferenceScreen;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 279
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 265
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    .line 365
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 371
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 378
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 383
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 388
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 393
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    .line 399
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 405
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 411
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    .line 417
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    .line 423
    iput v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    .line 459
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 941
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$3;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1110
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$4;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1174
    new-instance v0, Lcom/android/phone/MSimCallFeaturesSubSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$5;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/MSimCallFeaturesSubSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/MSimCallFeaturesSubSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;
    .param p1, "x1"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/MSimCallFeaturesSubSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimCallFeaturesSubSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MSimCallFeaturesSubSetting;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MSimCallFeaturesSubSetting;)Landroid/os/AsyncResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/MSimCallFeaturesSubSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/MSimCallFeaturesSubSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/MSimCallFeaturesSubSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/MSimCallFeaturesSubSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSimCallFeaturesSubSetting;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1212
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1213
    const/4 v2, 0x1

    .line 1225
    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .line 1217
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .line 1218
    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1219
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1220
    const/4 v2, 0x0

    .line 1221
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1231
    const/4 v3, 0x0

    .line 1232
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1234
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1236
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1237
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1238
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1239
    if-nez v3, :cond_1

    .line 1240
    const-string v3, ""

    .line 1245
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1252
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1253
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1255
    const-string v0, ""

    .line 1259
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting settings for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 2007
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 2014
    :goto_0
    return-void

    .line 2010
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 887
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2018
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "idx"    # I

    .prologue
    const/16 v8, 0x25a

    const/4 v9, 0x0

    .line 954
    const-string v5, "MSimCallFeaturesSubSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleForwardingSettingsReadResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v2, 0x0

    .line 956
    .local v2, "error":Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 957
    const-string v5, "MSimCallFeaturesSubSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 961
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 962
    const-string v6, "MSimCallFeaturesSubSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FwdRead: userObj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "error":Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 968
    .restart local v2    # "error":Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_2

    .line 969
    const-string v5, "MSimCallFeaturesSubSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignoring fwd reading result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :goto_0
    return-void

    .line 974
    :cond_2
    if-eqz v2, :cond_3

    .line 975
    const-string v5, "MSimCallFeaturesSubSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error discovered for fwd read : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 977
    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    .line 978
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    goto :goto_0

    .line 983
    :cond_3
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 984
    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 985
    .local v3, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_4

    .line 986
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 987
    aget-object v3, v0, v4

    .line 991
    :cond_4
    if-nez v3, :cond_8

    .line 995
    const-string v5, "MSimCallFeaturesSubSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating default info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 997
    .restart local v3    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 998
    sget-object v5, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 999
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1008
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 1011
    const/4 v1, 0x1

    .line 1012
    .local v1, "done":Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 1013
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_b

    .line 1014
    const/4 v1, 0x0

    .line 1018
    :cond_5
    if-eqz v1, :cond_c

    .line 1019
    const-string v5, "MSimCallFeaturesSubSetting"

    const-string v6, "Done receiving fwd info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallFeaturesSubSetting;->dismissDialogSafely(I)V

    .line 1021
    iget-boolean v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_6

    .line 1022
    const-string v5, ""

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 1025
    iput-boolean v9, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1027
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_0

    .line 985
    .end local v1    # "done":Z
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1002
    :cond_8
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 1003
    :cond_9
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1006
    :cond_a
    const-string v5, "MSimCallFeaturesSubSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1012
    .restart local v1    # "done":Z
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1029
    :cond_c
    const-string v5, "MSimCallFeaturesSubSetting"

    const-string v6, "Not done receiving fwd info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1264
    const-string v0, "handleSetVMMessage: set VM request complete"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1268
    const-string v0, ""

    .line 1269
    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 1270
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1271
    if-eqz v0, :cond_3

    move v3, v2

    move v2, v1

    .line 1276
    :goto_0
    if-eqz v2, :cond_2

    .line 1277
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_2

    .line 1282
    :goto_1
    if-eqz v1, :cond_0

    .line 1283
    const-string v0, "change VM success!"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1284
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1294
    :goto_2
    return-void

    .line 1286
    :cond_0
    if-eqz v3, :cond_1

    .line 1287
    const-string v1, "MSimCallFeaturesSubSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change fowarding setting. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_2

    .line 1290
    :cond_1
    const-string v1, "MSimCallFeaturesSubSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change voicemail. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMOrFwdSetError(I)V

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 2

    .prologue
    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVMAndFwdSetSuccess(). current voicemail provider key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1324
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 1327
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 1328
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 852
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1304
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1305
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 1306
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1307
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    .line 1313
    :goto_0
    return-void

    .line 1310
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1311
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 1312
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    .line 1034
    const/4 v4, 0x0

    .line 1035
    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 1036
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1037
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 1038
    move-object v4, v2

    .line 1043
    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .line 1036
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1807
    const-string v0, "initVoiceMailProviders()"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vm_numbers"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1813
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1814
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1815
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ACTION_ADD_VOICEMAIL. providerToIgnore="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1818
    if-eqz v0, :cond_0

    .line 1820
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    .line 1824
    :goto_1
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1827
    const v0, 0x7f0d00c1

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1828
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v4, ""

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    invoke-direct {v6, p0, v5, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1832
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1833
    const-string v1, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1835
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move v4, v0

    .line 1839
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1840
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1841
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1842
    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 1843
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring key: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1845
    add-int/lit8 v4, v4, -0x1

    .line 1839
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1848
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1850
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1851
    const-string v11, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Store loaded VoiceMailProvider. key: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " -> name: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", intent: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1858
    iget-object v8, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    invoke-direct {v11, p0, v0, v10}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1866
    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    .line 1867
    new-array v4, v4, [Ljava/lang/String;

    .line 1868
    aput-object v5, v2, v3

    .line 1869
    const-string v0, ""

    aput-object v0, v4, v3

    .line 1870
    const/4 v0, 0x1

    move v1, v0

    .line 1871
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1872
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1873
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1871
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_4

    .line 1876
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 1877
    aput-object v5, v4, v1

    .line 1878
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 1882
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1883
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1888
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set up the first mPreviousVMProviderKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1892
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1893
    return-void

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1745
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 1048
    const/4 v0, 0x1

    .line 1049
    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1052
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1053
    const/4 v0, 0x0

    .line 1056
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1967
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1969
    if-nez v3, :cond_0

    .line 1970
    const-string v1, "MSimCallFeaturesSubSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceMailProvider settings for the key \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found. Returning null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :goto_0
    return-object v0

    .line 1975
    :cond_0
    sget-object v0, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1977
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1978
    if-lez v2, :cond_2

    .line 1979
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 1980
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 1981
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1982
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 1983
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1985
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Reason"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1988
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1989
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1990
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Number"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1992
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#Time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x14

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    move-object v0, v2

    .line 1997
    :cond_2
    new-instance v1, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded settings for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 1999
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1750
    const-string v0, "MSimCallFeaturesSubSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1896
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1926
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 1956
    :goto_0
    return-void

    .line 1929
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 1930
    invoke-virtual {p2, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeSaveSettingsForVoicemailProvider: Not saving setting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " since they have not changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1937
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving settings for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1938
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1941
    iget-object v3, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1942
    sget-object v4, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_2

    .line 1943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1944
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 1945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1946
    aget-object v5, v3, v0

    .line 1947
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1948
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1949
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1950
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1944
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1953
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1955
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private onRevertDone()V
    .locals 2

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flipping provider key back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 745
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 746
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 749
    :cond_0
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 1060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1061
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1062
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newSettings"    # Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    .prologue
    const/4 v2, 0x0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 898
    iget-object v1, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 900
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 901
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 904
    :cond_0
    iget-object v1, p2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newFwdNumber "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " settings"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 911
    const-string v1, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 912
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 916
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v3, :cond_3

    .line 917
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showVMDialog(I)V

    .line 939
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 905
    goto :goto_0

    .line 921
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    .line 922
    iput-boolean v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    .line 923
    iput-boolean v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    .line 924
    iput v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMOrFwdSetError:I

    .line 925
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 926
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mReadingSettingsForDefaultProvider:Z

    .line 928
    const-string v1, "Reading current forwarding settings"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 929
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 930
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 931
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 932
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 930
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 935
    :cond_4
    const/16 v1, 0x25a

    invoke-direct {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_1

    .line 937
    .end local v0    # "i":I
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 1067
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1068
    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1069
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/MSimCallFeaturesSubSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    .line 1070
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    .line 1071
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 1072
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 1074
    .local v7, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/MSimCallFeaturesSubSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 1077
    .local v6, "doUpdate":Z
    if-eqz v6, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v10, 0x1f5

    iget v11, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v10, v11, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1071
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v9

    .line 1081
    goto :goto_1

    .line 1092
    .end local v6    # "doUpdate":Z
    .end local v7    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    .line 1097
    .end local v8    # "i":I
    :goto_2
    return-void

    .line 1094
    :cond_3
    const-string v0, "Not touching fwd #"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1095
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1105
    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialog(I)V

    .line 883
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    .line 1483
    sparse-switch p1, :sswitch_data_0

    .line 1505
    :goto_0
    return-void

    .line 1487
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1490
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1493
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1496
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1499
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1483
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1908
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1909
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1910
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1911
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1916
    :cond_0
    return-void

    .line 1909
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 674
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Needs to rollback. mVMChangeCompletedSuccessfully="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFwdChangesRequireRollback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 682
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->showDialogIfForeground(I)V

    .line 683
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 685
    .local v9, "prevSettings":Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    if-nez v9, :cond_1

    .line 687
    const-string v0, "MSimCallFeaturesSubSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" becomes null, which is unexpected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v0, "MSimCallFeaturesSubSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMChangeCompletedSuccessfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFwdChangesRequireRollback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, v9, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    .line 697
    const-string v0, "MSimCallFeaturesSubSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 704
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 705
    const-string v0, "MSimCallFeaturesSubSetting"

    const-string v1, "Requested to rollback Fwd changes."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v8, v9, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 708
    .local v8, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_6

    .line 709
    iget-object v11, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 711
    .local v11, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->resetForwardingChangeState()V

    .line 712
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_6

    .line 713
    aget-object v6, v8, v7

    .line 714
    .local v6, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 717
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 718
    .local v10, "result":Landroid/os/AsyncResult;
    if-eqz v10, :cond_3

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    .line 719
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 712
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v1, v12

    .line 720
    goto :goto_1

    .line 734
    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "prevSettings":Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    const-string v0, "No need to revert"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onRevertDone()V

    .line 738
    :cond_6
    return-void
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1759
    .line 1760
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;

    .line 1766
    if-nez v0, :cond_0

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v1, 0x7f0d00c0

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1771
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1772
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1797
    :goto_0
    return-void

    .line 1781
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1785
    iget-object v1, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1786
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1787
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1788
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 2

    .prologue
    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoiceNumberField(). mSubMenuVoicemailSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1342
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1343
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1346
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1348
    :goto_1
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1346
    :cond_2
    const v0, 0x7f0d0262

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 760
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_9

    .line 761
    const/4 v8, 0x0

    .line 764
    .local v8, "failure":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMProviderSettingsForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 765
    iget-boolean v12, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 766
    .local v12, "isVMProviderSettingsForced":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 768
    const/4 v14, 0x0

    .line 769
    .local v14, "vmNum":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 770
    const-string v1, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 771
    const/4 v8, 0x1

    .line 799
    :cond_0
    :goto_0
    if-eqz v8, :cond_7

    .line 800
    const-string v1, "Failure in return from voicemail provider"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 801
    if-eqz v12, :cond_6

    .line 802
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    .line 839
    .end local v8    # "failure":Z
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :goto_1
    return-void

    .line 773
    .restart local v8    # "failure":Z
    .restart local v12    # "isVMProviderSettingsForced":Z
    .restart local v14    # "vmNum":Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_2

    .line 774
    const-string v1, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 775
    const/4 v8, 0x1

    goto :goto_0

    .line 777
    :cond_2
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 778
    const-string v1, "Provider requested signout"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 779
    if-eqz v12, :cond_3

    .line 780
    const-string v1, "Going back to previous provider on signout"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 781
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 783
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 784
    .local v13, "victim":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relaunching activity and ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 785
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v11, "i":Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    const/high16 v1, 0x4000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p0, v11}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 792
    .end local v11    # "i":Landroid/content/Intent;
    .end local v13    # "victim":Ljava/lang/String;
    :cond_4
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 793
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 794
    :cond_5
    const-string v1, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 795
    const/4 v8, 0x1

    goto :goto_0

    .line 804
    :cond_6
    const-string v1, "Not switching back the provider since this is not forced config"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 808
    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 809
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 813
    .local v9, "fwdNum":Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 815
    .local v10, "fwdNumTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: vm provider cfg result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v9, :cond_8

    const-string v1, "has"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forwarding number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 817
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    .line 815
    :cond_8
    const-string v1, " does not have"

    goto :goto_2

    .line 822
    .end local v8    # "failure":Z
    .end local v9    # "fwdNum":Ljava/lang/String;
    .end local v10    # "fwdNumTime":I
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v14    # "vmNum":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_d

    .line 823
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_a

    .line 824
    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 828
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallFeaturesSubSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 830
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_c

    .line 831
    :cond_b
    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 834
    :cond_c
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 838
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_d
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/16 v1, 0x1f6

    .line 1447
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1448
    packed-switch p2, :pswitch_data_0

    .line 1476
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1477
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    .line 1479
    :cond_1
    :goto_1
    return-void

    .line 1450
    :pswitch_0
    const-string v0, "Neutral button"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1453
    :pswitch_1
    const-string v0, "Negative button"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1454
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1457
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1461
    :pswitch_2
    const-string v0, "Positive button"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1462
    iget v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1465
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1467
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    goto :goto_1

    .line 1448
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 2049
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 2052
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1513
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(). Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1516
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1519
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    .line 1521
    const-string v0, "button_fdn_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    .line 1522
    const-string v0, "button_ipprefix_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;

    .line 1523
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->IPCALL_PREFIX:[Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1526
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1527
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d0335

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1532
    :cond_0
    :goto_0
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    .line 1533
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    .line 1534
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefFDN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1535
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefGSM:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1536
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefCDMA:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings onCreate subscription ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1539
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1541
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1544
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1545
    const-string v0, "button_voicemail_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1546
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_1

    .line 1547
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1548
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1549
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0d01d5

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1557
    :cond_1
    const-string v0, "button_voicemail_provider_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1558
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 1559
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1560
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1568
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->initVoiceMailProviders()V

    .line 1584
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1585
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1586
    if-eqz v0, :cond_3

    .line 1587
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1588
    :cond_3
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1589
    if-eqz v0, :cond_4

    .line 1590
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1592
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1593
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 1594
    const-string v0, "button_fdn_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_5

    .line 1596
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1597
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1598
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1613
    :cond_6
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1614
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    if-nez p1, :cond_7

    .line 1622
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_7

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_ADD_VOICEMAIL Intent is thrown. current VM data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v4, :cond_c

    .line 1629
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1636
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 1637
    iput-boolean v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 1651
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1652
    if-eqz v0, :cond_8

    .line 1654
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1658
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v1, v2}, Landroid/telephony/MSimTelephonyManager;->isValidSimState(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1660
    return-void

    .line 1529
    :cond_9
    iget-object v1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1600
    :cond_a
    if-ne v0, v4, :cond_b

    .line 1601
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->addPreferencesFromResource(I)V

    .line 1602
    const-string v0, "button_cf_expand_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefEXPAND:Landroid/preference/PreferenceScreen;

    .line 1603
    const-string v0, "button_more_expand_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefMOREEXPAND:Landroid/preference/PreferenceScreen;

    .line 1605
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefEXPAND:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionPrefMOREEXPAND:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscription"

    iget v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1608
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1631
    :cond_c
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1632
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v0, 0x7f0d0082

    const/16 v5, 0x25b

    const/16 v2, 0x259

    const/4 v4, 0x0

    const v3, 0x7f0d00b7

    .line 1369
    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x190

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    .line 1373
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1376
    const v1, 0x7f0d00ac

    .line 1377
    sparse-switch p1, :sswitch_data_0

    .line 1408
    const v0, 0x7f0d00b1

    .line 1411
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1415
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1416
    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1418
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1419
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1422
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1439
    :goto_1
    return-object v0

    .line 1379
    :sswitch_0
    const v1, 0x7f0d00bb

    .line 1382
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1387
    :sswitch_1
    const v1, 0x7f0d00bf

    .line 1390
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1393
    :sswitch_2
    const v0, 0x7f0d00bc

    .line 1395
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1396
    goto :goto_0

    .line 1398
    :sswitch_3
    const v0, 0x7f0d00bd

    .line 1400
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1401
    goto :goto_0

    .line 1403
    :sswitch_4
    const v0, 0x7f0d00be

    .line 1404
    const v3, 0x7f0d025d

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1405
    const v3, 0x7f0d025e

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1406
    goto :goto_0

    .line 1425
    :cond_1
    if-eq p1, v2, :cond_2

    const/16 v0, 0x25a

    if-eq p1, v0, :cond_2

    if-ne p1, v5, :cond_5

    .line 1427
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1428
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1429
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1430
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1431
    if-ne p1, v2, :cond_3

    const v0, 0x7f0d00ae

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1435
    goto :goto_1

    .line 1431
    :cond_3
    if-ne p1, v5, :cond_4

    const v0, 0x7f0d00af

    goto :goto_2

    :cond_4
    const v0, 0x7f0d00ad

    goto :goto_2

    .line 1439
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1377
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 621
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_1

    .line 640
    const-string v2, "updating default for voicemail dialog"

    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVoiceNumberField()V

    .line 654
    :cond_0
    :goto_0
    return-object v1

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 653
    const-string v1, "updating default for call forwarding dialogs"

    invoke-static {v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0d0083

    invoke-virtual {p0, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 2023
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2024
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2025
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2026
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2027
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2028
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivity(Landroid/content/Intent;)V

    .line 2029
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->finish()V

    .line 2030
    const/4 v0, 0x1

    .line 2032
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    .line 451
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v0, p2

    .line 571
    check-cast v0, Ljava/lang/String;

    .line 573
    .local v0, "newProviderKey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voicemail Provider changes from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    const-string v2, "No change is made toward VM provider setting."

    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 614
    .end local v0    # "newProviderKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 581
    .restart local v0    # "newProviderKey":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 592
    .local v1, "newProviderSettings":Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;
    if-nez v1, :cond_2

    .line 594
    const-string v2, "MSimCallFeaturesSubSetting"

    const-string v3, "Saved preferences not found - invoking config"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iput-boolean v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    .line 596
    iget-object v2, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 598
    :cond_2
    const-string v2, "Saved preferences found - switching to them"

    invoke-static {v2}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 600
    iput-boolean v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 601
    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimCallFeaturesSubSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/MSimCallFeaturesSubSetting$VoiceMailProviderSettings;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 468
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscriptionIPPrefix:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040020

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 470
    .local v2, "v":Landroid/view/View;
    const v5, 0x7f080076

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 473
    .local v0, "edit":Landroid/widget/EditText;
    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 474
    new-instance v4, Lcom/android/phone/MSimCallFeaturesSubSetting$1;

    invoke-direct {v4, p0}, Lcom/android/phone/MSimCallFeaturesSubSetting$1;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Settings$System;->IPCALL_PREFIX:[Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubscription:I

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "ip_prefix":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0336

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x108009b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/phone/MSimCallFeaturesSubSetting$2;

    invoke-direct {v6, p0, v0}, Lcom/android/phone/MSimCallFeaturesSubSetting$2;-><init>(Lcom/android/phone/MSimCallFeaturesSubSetting;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 544
    .end local v0    # "edit":Landroid/widget/EditText;
    .end local v1    # "ip_prefix":Ljava/lang/String;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return v3

    .line 516
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v5, :cond_0

    .line 518
    iget-object v5, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_3

    .line 519
    const-string v5, "onPreferenceTreeClick: Voicemail Settings Preference is clicked."

    invoke-static {v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick: Invoking cfg intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/MSimCallFeaturesSubSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 531
    :cond_2
    const-string v3, "onPreferenceTreeClick: No Intent is available. Use default behavior defined in xml."

    invoke-static {v3}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 537
    const-string v3, ""

    iput-object v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 538
    iput-boolean v4, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mVMProviderSettingsForced:Z

    move v3, v4

    .line 541
    goto :goto_0

    :cond_3
    move v3, v4

    .line 544
    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1362
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1363
    iput p1, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mCurrentDialogId:I

    .line 1364
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1698
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1699
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/MSimCallFeaturesSubSetting;->mForeground:Z

    .line 1701
    invoke-direct {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1702
    invoke-virtual {p0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1703
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 1704
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1705
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    .line 1704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1717
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "screen":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 661
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 663
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/MSimCallFeaturesSubSetting;->log(Ljava/lang/String;)V

    .line 668
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
