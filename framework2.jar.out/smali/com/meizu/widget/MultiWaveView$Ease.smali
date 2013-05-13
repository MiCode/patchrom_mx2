.class Lcom/meizu/widget/MultiWaveView$Ease;
.super Ljava/lang/Object;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ease"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MultiWaveView$Ease$Sine;,
        Lcom/meizu/widget/MultiWaveView$Ease$Quint;,
        Lcom/meizu/widget/MultiWaveView$Ease$Quart;,
        Lcom/meizu/widget/MultiWaveView$Ease$Quad;,
        Lcom/meizu/widget/MultiWaveView$Ease$Cubic;,
        Lcom/meizu/widget/MultiWaveView$Ease$Linear;
    }
.end annotation


# static fields
.field private static final DOMAIN:F = 1.0f

.field private static final DURATION:F = 1.0f

.field private static final START:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1423
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    return-void
.end method
