.class final Landroid/content/Context$3;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Landroid/content/Context$F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fun(JJJ)J
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 308
    xor-long v0, p1, p3

    xor-long/2addr v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
