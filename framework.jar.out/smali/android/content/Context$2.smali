.class final Landroid/content/Context$2;
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
    .line 300
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
    .line 302
    xor-long v0, p1, p3

    and-long/2addr v0, p5

    xor-long/2addr v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
