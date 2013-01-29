.class Lcom/android/gallery3d/app/MovieControllerOverlay$14;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;->initTopPartWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$14;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    check-cast p1, Landroid/widget/SeekBar;

    .end local p1
    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->onSeekbarProgressTouch(Landroid/widget/SeekBar;Landroid/view/MotionEvent;)V

    .line 1648
    const/4 v0, 0x1

    return v0
.end method
