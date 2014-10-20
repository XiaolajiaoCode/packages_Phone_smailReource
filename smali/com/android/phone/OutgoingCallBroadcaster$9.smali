.class Lcom/android/phone/OutgoingCallBroadcaster$9;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1007
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "Missing voicemail AlertDialog: NEGATIVE click..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # invokes: Lcom/android/phone/OutgoingCallBroadcaster;->addVoiceMailNumberPanel()V
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$500(Lcom/android/phone/OutgoingCallBroadcaster;)V

    .line 1009
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$9;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 1010
    return-void
.end method
