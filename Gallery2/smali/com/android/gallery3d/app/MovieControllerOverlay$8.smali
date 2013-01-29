.class Lcom/android/gallery3d/app/MovieControllerOverlay$8;
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
    .line 959
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 962
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6002(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 963
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 964
    .local v1, menu:Landroid/view/Menu;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuInfo:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6200(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuInfo:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6200(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v5, v0, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z
    invoke-static {v2, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 968
    invoke-interface {v1, v5, v6, v5}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 969
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setMenuItemCheck()V
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 970
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/PopupMenu;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay$8;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1025
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 1027
    return-void
.end method
