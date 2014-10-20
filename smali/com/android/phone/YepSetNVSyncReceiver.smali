.class public Lcom/android/phone/YepSetNVSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "YepSetNVSyncReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/phone/YepSetNVSyncReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/YepSetNVSyncReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    new-instance v0, Lcom/android/phone/YepSetNVSyncReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/YepSetNVSyncReceiver$1;-><init>(Lcom/android/phone/YepSetNVSyncReceiver;)V

    iput-object v0, p0, Lcom/android/phone/YepSetNVSyncReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/phone/YepSetNVSyncReceiver;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/YepSetNVSyncReceiver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/YepSetNVSyncReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/YepSetNVSyncReceiver;->sendCommandComplete(Z)V

    return-void
.end method

.method private sendCommandComplete(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_NV_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "operate"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/phone/YepSetNVSyncReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 70
    return-void
.end method

.method private setNVSync()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .line 44
    .local v1, "sPhone":Lcom/android/internal/telephony/PhoneProxy;
    :goto_0
    iget-object v2, p0, Lcom/android/phone/YepSetNVSyncReceiver;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 45
    .local v0, "response":Landroid/os/Message;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getCommandInterFace()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->yepSetNVSync(Landroid/os/Message;)V

    .line 46
    return-void

    .line 41
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "sPhone":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .restart local v1    # "sPhone":Lcom/android/internal/telephony/PhoneProxy;
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/phone/YepSetNVSyncReceiver;->mContext:Landroid/content/Context;

    .line 27
    const-string v1, "com.android.phone.ACTION_NV_SYNC"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "operate"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "operate":Ljava/lang/String;
    sget-object v1, Lcom/android/phone/YepSetNVSyncReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", operate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v1, "NV_SYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/android/phone/YepSetNVSyncReceiver;->setNVSync()V

    .line 34
    .end local v0    # "operate":Ljava/lang/String;
    :cond_0
    return-void
.end method
