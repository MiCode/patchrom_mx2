.class Lcom/android/gallery3d/ui/ActionModeHandler$2;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 1
    .parameter "source"
    .parameter "intent"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$2;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$000(Lcom/android/gallery3d/ui/ActionModeHandler;)Lcom/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 224
    const/4 v0, 0x0

    return v0
.end method
