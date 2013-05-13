.class Lcom/android/gallery3d/photoeditor/PhotoEditor$12;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

.field final synthetic val$undo:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iput-boolean p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;->val$undo:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$12;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$12$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$12$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$12;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 697
    return-void
.end method
