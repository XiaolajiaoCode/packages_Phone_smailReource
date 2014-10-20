.class public Lcom/android/phone/common/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final durationInSec:I

.field public final durationType:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final subscription:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "presentation"    # I
    .param p5, "callType"    # I
    .param p6, "timestamp"    # J
    .param p8, "durationInMillis"    # J
    .param p10, "subscription"    # I
    .param p11, "durationType"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 98
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 100
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 101
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 102
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 103
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->subscription:I

    .line 104
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationType:I

    .line 105
    return-void
.end method
