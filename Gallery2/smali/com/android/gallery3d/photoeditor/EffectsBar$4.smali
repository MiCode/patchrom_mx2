.class Lcom/android/gallery3d/photoeditor/EffectsBar$4;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f040053

    const/4 v4, 0x1

    .line 344
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/FilterStack;->isAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 348
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    .line 352
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->clearEffectsSelected()V

    .line 354
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v3, 0x0

    #calls: Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1300(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)Z

    .line 355
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z
    invoke-static {v2, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$502(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    .line 357
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1402(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 358
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 359
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$702(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 361
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->lastEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1502(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 362
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1400(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 363
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1400(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->hasToolPannel()Z

    move-result v0

    .line 364
    .local v0, hasToolPannel:Z
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1400(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doBegin(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 368
    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$4$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$4$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar$4;)V

    .line 376
    .local v1, listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->isSetupEffectClick:Z
    invoke-static {v2, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1602(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    .line 377
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 378
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setDefaultValue()V

    .line 380
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1400(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->begin(Landroid/view/View;Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;Z)V

    goto/16 :goto_0

    .line 349
    .end local v0           #hasToolPannel:Z
    .end local v1           #listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v2

    const v3, 0x7f040056

    if-ne v2, v3, :cond_2

    .line 350
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$4;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    goto/16 :goto_1
.end method
