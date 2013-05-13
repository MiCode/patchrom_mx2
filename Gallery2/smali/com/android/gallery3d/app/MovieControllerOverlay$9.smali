.class Lcom/android/gallery3d/app/MovieControllerOverlay$9;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
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
    .line 943
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$9;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$9;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$9;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6202(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 947
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$9;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showPopMenu()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6400(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 948
    return-void
.end method
