.class Lcom/android/gallery3d/app/MovieControllerOverlay$15;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;->showPopMenu()V
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
    .line 1324
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$15;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$15;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1328
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$15;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->resetVolumeBar()V

    .line 1329
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$15;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$15;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7600(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 1332
    :cond_0
    return-void
.end method
