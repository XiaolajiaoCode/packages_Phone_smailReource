.class Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;
.super Landroid/os/Handler;
.source "MSimDTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimDTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimDTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimDTMFTwelveKeyDialer;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/MSimDTMFTwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string v0, "disconnect message recieved, shutting down."

    # invokes: Lcom/android/phone/MSimDTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/MSimDTMFTwelveKeyDialer;

    iget-object v0, v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 89
    iget-object v0, p0, Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/MSimDTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 92
    :pswitch_1
    const-string v0, "dtmf confirmation received from FW."

    # invokes: Lcom/android/phone/MSimDTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/MSimDTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->handleBurstDtmfConfirmation()V

    goto :goto_0

    .line 97
    :pswitch_2
    const-string v0, "dtmf stop received"

    # invokes: Lcom/android/phone/MSimDTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/phone/MSimDTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/MSimDTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/MSimDTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
