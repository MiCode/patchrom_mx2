.class Lcom/android/gallery3d/photoeditor/EffectsBar$6;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic val$runnableOnDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->val$runnableOnDone:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 437
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, fullscreenTool:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1000(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 442
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;
    invoke-static {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1002(Lcom/android/gallery3d/photoeditor/EffectsBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 443
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1402(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 444
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->val$runnableOnDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$6;->val$runnableOnDone:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 447
    :cond_1
    return-void
.end method
