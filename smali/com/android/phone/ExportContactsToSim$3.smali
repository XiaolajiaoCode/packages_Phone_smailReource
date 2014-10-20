.class Lcom/android/phone/ExportContactsToSim$3;
.super Landroid/os/Handler;
.source "ExportContactsToSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ExportContactsToSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ExportContactsToSim;


# direct methods
.method constructor <init>(Lcom/android/phone/ExportContactsToSim;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/phone/ExportContactsToSim$3;->this$0:Lcom/android/phone/ExportContactsToSim;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/phone/ExportContactsToSim$3;->this$0:Lcom/android/phone/ExportContactsToSim;

    iget-object v2, p0, Lcom/android/phone/ExportContactsToSim$3;->this$0:Lcom/android/phone/ExportContactsToSim;

    const v3, 0x7f0d0357

    invoke-virtual {v2, v3}, Lcom/android/phone/ExportContactsToSim;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/ExportContactsToSim;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ExportContactsToSim;->access$400(Lcom/android/phone/ExportContactsToSim;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/phone/ExportContactsToSim$3;->this$0:Lcom/android/phone/ExportContactsToSim;

    iget-object v2, p0, Lcom/android/phone/ExportContactsToSim$3;->this$0:Lcom/android/phone/ExportContactsToSim;

    const v3, 0x7f0d0358

    invoke-virtual {v2, v3}, Lcom/android/phone/ExportContactsToSim;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/ExportContactsToSim;->showAlertDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ExportContactsToSim;->access$400(Lcom/android/phone/ExportContactsToSim;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
