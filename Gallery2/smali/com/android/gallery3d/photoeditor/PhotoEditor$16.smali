.class Lcom/android/gallery3d/photoeditor/PhotoEditor$16;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->createYesCancelDialog()V
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
    .line 509
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #calls: Lcom/android/gallery3d/photoeditor/PhotoEditor;->getDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    .line 516
    .local v0, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->saveTextString()V

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 520
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$16;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->clickSave()V

    .line 521
    return-void
.end method
