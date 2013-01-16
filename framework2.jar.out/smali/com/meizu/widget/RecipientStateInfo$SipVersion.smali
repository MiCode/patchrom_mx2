.class public Lcom/meizu/widget/RecipientStateInfo$SipVersion;
.super Ljava/lang/Object;
.source "RecipientStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SipVersion"
.end annotation


# static fields
.field public static final SIP_SMSMMS_VERSION:I = 0x1

.field public static final SIP_SMS_VERSION:I = 0x0

.field public static final SIP_UNREGISTER_VERSION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
