.class Lcom/android/phone/ExportContactsToSim$1;
.super Ljava/lang/Object;
.source "ExportContactsToSim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ExportContactsToSim;->doExportToSim()V
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
    .line 98
    iput-object p1, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 100
    iget-object v3, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # invokes: Lcom/android/phone/ExportContactsToSim;->getContactsContentCursor()Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/phone/ExportContactsToSim;->access$000(Lcom/android/phone/ExportContactsToSim;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    .local v0, "contactsCursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    const/4 v4, 0x0

    # setter for: Lcom/android/phone/ExportContactsToSim;->mResult:I
    invoke-static {v3, v4}, Lcom/android/phone/ExportContactsToSim;->access$102(Lcom/android/phone/ExportContactsToSim;I)I

    .line 107
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # invokes: Lcom/android/phone/ExportContactsToSim;->populateContactDataFromCursor(Landroid/database/Cursor;)V
    invoke-static {v3, v0}, Lcom/android/phone/ExportContactsToSim;->access$200(Lcom/android/phone/ExportContactsToSim;Landroid/database/Cursor;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    iget-object v3, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # getter for: Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/ExportContactsToSim;->access$300(Lcom/android/phone/ExportContactsToSim;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # getter for: Lcom/android/phone/ExportContactsToSim;->mResult:I
    invoke-static {v4}, Lcom/android/phone/ExportContactsToSim;->access$100(Lcom/android/phone/ExportContactsToSim;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 113
    .local v2, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/ExportContactsToSim$1;->this$0:Lcom/android/phone/ExportContactsToSim;

    # getter for: Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/ExportContactsToSim;->access$300(Lcom/android/phone/ExportContactsToSim;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method
