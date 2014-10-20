.class public Lcom/android/phone/XDivertUtility;
.super Ljava/lang/Object;
.source "XDivertUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;
    }
.end annotation


# static fields
.field protected static sMe:Lcom/android/phone/XDivertUtility;


# instance fields
.field private mApp:Lcom/android/phone/MSimPhoneGlobals;

.field private mCallNotifier:Lcom/android/phone/MSimCallNotifier;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHasImsiChanged:[Z

.field private mImsiFromSim:[Ljava/lang/String;

.field private mLineNumber:[Ljava/lang/String;

.field private mNumPhones:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStoredImsi:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    .line 149
    new-instance v0, Lcom/android/phone/XDivertUtility$1;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertUtility$1;-><init>(Lcom/android/phone/XDivertUtility;)V

    iput-object v0, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    .line 80
    sput-object p0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    .line 81
    return-void
.end method

.method private constructor <init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)V
    .locals 8
    .param p1, "app"    # Lcom/android/phone/MSimPhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "callNotifier"    # Lcom/android/phone/MSimCallNotifier;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    .line 149
    new-instance v3, Lcom/android/phone/XDivertUtility$1;

    invoke-direct {v3, p0}, Lcom/android/phone/XDivertUtility$1;-><init>(Lcom/android/phone/XDivertUtility;)V

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    .line 97
    const-string v3, "XDivertUtility"

    const-string v4, "onCreate()..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v2

    .line 100
    .local v2, "subMgr":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    iput-object p1, p0, Lcom/android/phone/XDivertUtility;->mApp:Lcom/android/phone/MSimPhoneGlobals;

    .line 101
    iput-object p2, p0, Lcom/android/phone/XDivertUtility;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    iput-object p3, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    .line 103
    iput-object p4, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    .line 105
    new-instance v3, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/phone/XDivertUtility$XDivertBroadcastReceiver;-><init>(Lcom/android/phone/XDivertUtility;Lcom/android/phone/XDivertUtility$1;)V

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    .line 108
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    .line 109
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    .line 110
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    .line 111
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4, v7}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    invoke-virtual {p1, v0}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/XDivertUtility;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/XDivertUtility;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v6, v5}, Lcom/android/internal/telephony/Phone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    aput-boolean v6, v3, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/XDivertUtility;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimPhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertUtility;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mApp:Lcom/android/phone/MSimPhoneGlobals;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertUtility;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertUtility;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertUtility;)Lcom/android/phone/MSimCallNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertUtility;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/XDivertUtility;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertUtility;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/XDivertUtility;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/XDivertUtility;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/XDivertUtility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/XDivertUtility;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/XDivertUtility;->onSubscriptionDeactivated()V

    return-void
.end method

.method static getInstance()Lcom/android/phone/XDivertUtility;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    return-object v0
.end method

.method static init(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)Lcom/android/phone/XDivertUtility;
    .locals 4

    .prologue
    .line 85
    const-class v1, Lcom/android/phone/XDivertUtility;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/phone/XDivertUtility;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/XDivertUtility;-><init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    .line 91
    :goto_0
    sget-object v0, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    monitor-exit v1

    return-object v0

    .line 89
    :cond_0
    const-string v0, "XDivertUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/XDivertUtility;->sMe:Lcom/android/phone/XDivertUtility;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onSubscriptionDeactivated()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 253
    return-void
.end method


# virtual methods
.method protected checkImsiReady()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/phone/XDivertUtility;->mNumPhones:I

    if-ge v0, v3, :cond_4

    .line 208
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertUtility;->getSimImsi(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 209
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 211
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    if-ne v3, v4, :cond_1

    .line 223
    :cond_0
    :goto_1
    return v1

    .line 213
    :cond_1
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/XDivertUtility;->mStoredImsi:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    :cond_2
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mCallNotifier:Lcom/android/phone/MSimCallNotifier;

    invoke-virtual {v3, v1}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    .line 218
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mImsiFromSim:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/XDivertUtility;->setSimImsi(Ljava/lang/String;I)V

    .line 219
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 220
    iget-object v3, p0, Lcom/android/phone/XDivertUtility;->mHasImsiChanged:[Z

    aput-boolean v2, v3, v0

    .line 207
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 223
    goto :goto_1
.end method

.method protected getLineNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    return-object v0
.end method

.method protected getNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_number_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getSimImsi(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 233
    const-string v1, "XDivertUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimImsi sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected setSimImsi(Ljava/lang/String;I)V
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    .line 241
    const-string v2, "XDivertUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimImsi imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 244
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    return-void
.end method

.method protected storeNumber(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    iget-object v2, p0, Lcom/android/phone/XDivertUtility;->mLineNumber:[Ljava/lang/String;

    aput-object p1, v2, p2

    .line 273
    return-void
.end method
