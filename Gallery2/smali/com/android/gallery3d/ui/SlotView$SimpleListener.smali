.class public Lcom/android/gallery3d/ui/SlotView$SimpleListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 51
    return-void
.end method

.method public onLongTap(III)V
    .locals 0
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 54
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 0
    .parameter "position"
    .parameter "total"

    .prologue
    .line 55
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 53
    return-void
.end method

.method public onUp(Z)V
    .locals 0
    .parameter "followedByLongPress"

    .prologue
    .line 52
    return-void
.end method
