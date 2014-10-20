.class Lcom/android/phone/SimContacts$1;
.super Landroid/os/Handler;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 594
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 605
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v1}, Lcom/android/phone/SimContacts;->reQuery()V

    .line 597
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 598
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    const v3, 0x7f0d0355

    invoke-virtual {v2, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    iget-object v2, p0, Lcom/android/phone/SimContacts$1;->this$0:Lcom/android/phone/SimContacts;

    const v3, 0x7f0d0356

    invoke-virtual {v2, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/SimContacts;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
