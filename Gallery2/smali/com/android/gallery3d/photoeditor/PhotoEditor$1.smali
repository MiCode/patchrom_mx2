.class Lcom/android/gallery3d/photoeditor/PhotoEditor$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStackChanged(ZZ)V
    .locals 1
    .parameter "canUndo"
    .parameter "canRedo"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoeditorActionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->updateButtons(ZZ)V

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->updateSave(Z)V

    .line 141
    :cond_0
    return-void
.end method
