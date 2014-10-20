.class Lcom/android/phone/EmergencyCallList$4;
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
    .line 195
    iput-object p1, p0, Lcom/android/phone/EmergencyCallList$4;->this$0:Lcom/android/phone/EmergencyCallList;

    iput-object p2, p0, Lcom/android/phone/EmergencyCallList$4;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList$4;->val$edit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/phone/EmergencyCallList$4;->this$0:Lcom/android/phone/EmergencyCallList;

    # getter for: Lcom/android/phone/EmergencyCallList;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/EmergencyCallList;->access$300(Lcom/android/phone/EmergencyCallList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 199
    return-void
.end method
