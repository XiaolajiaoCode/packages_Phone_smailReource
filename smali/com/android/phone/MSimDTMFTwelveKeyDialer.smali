.class public Lcom/android/phone/MSimDTMFTwelveKeyDialer;
.super Lcom/android/phone/DTMFTwelveKeyDialer;
.source "MSimDTMFTwelveKeyDialer.java"


# instance fields
.field private final mSimHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/phone/MSimInCallScreen;Landroid/view/ViewStub;)V
    .locals 2
    .param p1, "parent"    # Lcom/android/phone/MSimInCallScreen;
    .param p2, "dialerStub"    # Landroid/view/ViewStub;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Landroid/view/ViewStub;)V

    .line 79
    new-instance v0, Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;-><init>(Lcom/android/phone/MSimDTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->mSimHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTMFTwelveKeyDialer constructor... this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "MSimDTMFTwelveKeyDialer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method


# virtual methods
.method protected onDialerOpen(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 58
    const-string v0, "onDialerOpen()..."

    invoke-static {v0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->mSimHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/android/phone/MSimPhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 69
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallScreen;->onDialerOpen(Z)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "MSimDTMFTwelveKeyDialer"

    const-string v1, "InCallScreen object was null during onDialerOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
