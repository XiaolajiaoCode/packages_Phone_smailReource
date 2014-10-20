.class final Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
.super Ljava/lang/Object;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public argument2:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "argument"    # Ljava/lang/Object;
    .param p2, "argument2"    # Ljava/lang/Object;

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->argument2:Ljava/lang/Object;

    .line 96
    return-void
.end method
