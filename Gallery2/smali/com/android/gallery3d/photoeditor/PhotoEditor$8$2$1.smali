.class Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f0d0119

    .line 290
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v2

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;->val$minResult:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getCurrentEffectId()I

    move-result v0

    .line 292
    .local v0, currentEffectId:I
    const v1, 0x7f040053

    if-ne v0, v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 299
    :goto_1
    return-void

    .line 290
    .end local v0           #currentEffectId:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 294
    .restart local v0       #currentEffectId:I
    :cond_1
    const v1, 0x7f040056

    if-ne v0, v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    const v2, 0x7f0d011a

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$8;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$8;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_1
.end method
