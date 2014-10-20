.class Lcom/android/phone/EmergencyCallList$3;
.super Ljava/lang/Object;
.source "EmergencyCallList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallList;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallList;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    iput-object p2, p0, Lcom/android/phone/EmergencyCallList$3;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/EmergencyCallList;->addEmergencyNumber(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/EmergencyCallList;->access$100(Lcom/android/phone/EmergencyCallList;Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    # invokes: Lcom/android/phone/EmergencyCallList;->refreshNumberList()V
    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->access$200(Lcom/android/phone/EmergencyCallList;)V

    .line 191
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$3;->val$edit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/android/phone/EmergencyCallList$3;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/EmergencyCallList;->access$300(Lcom/android/phone/EmergencyCallList;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 193
    return-void
.end method
