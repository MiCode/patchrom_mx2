.class Lcom/android/gallery3d/photoeditor/EffectsBar$2;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->createEffectsGallery(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v2, 0x0

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$702(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 312
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    move-result-object v1

    const v2, 0x7f0d0103

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->clearEffectsSelected()V

    .line 315
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->removeFilter()Z

    .line 316
    invoke-static {}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->getInstance()Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setDefaultValue()V

    .line 317
    new-instance v0, Lcom/android/gallery3d/photoeditor/EffectsBar$2$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$2$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar$2;)V

    .line 322
    .local v0, callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->doAll(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    goto :goto_0
.end method
