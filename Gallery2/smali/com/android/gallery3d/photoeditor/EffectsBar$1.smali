.class Lcom/android/gallery3d/photoeditor/EffectsBar$1;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->initialize(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic val$filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->val$filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(ZI)Z
    .locals 7
    .parameter "isSelected"
    .parameter "effectsId"

    .prologue
    const v6, 0x7f0d012e

    const v5, 0x7f04005b

    const v4, 0x7f040058

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->isOpenGallery:Z
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$000(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->val$filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 145
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->val$filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    .line 149
    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->actionBar:Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditorActionBar;->clickBack()V

    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z
    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$302(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    .line 152
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z
    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$402(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    goto :goto_0

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->val$filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->setIsMakeAnimationEable(Z)V

    goto :goto_1

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v1

    if-ne v1, v4, :cond_7

    if-ne p2, v5, :cond_7

    .line 157
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setTopFilterApplied()V

    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z
    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$502(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    .line 169
    :cond_5
    :goto_2
    if-ne p2, v5, :cond_9

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->exposureButtonValid:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$402(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    .line 171
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$800(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/EffectsMenu;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f020127

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$800(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/EffectsMenu;

    move-result-object v1

    const v3, 0x7f0d012f

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f02014e

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 182
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v1, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$102(Lcom/android/gallery3d/photoeditor/EffectsBar;I)I

    .line 184
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$900(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1000(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_a

    .line 185
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$900(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p2, v1, :cond_a

    .line 186
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->doEffectMenuSelected()V

    move v0, p1

    .line 187
    goto/16 :goto_0

    .line 159
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->currentEffectId:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;)I

    move-result v1

    if-ne v1, v5, :cond_5

    if-ne p2, v4, :cond_5

    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #calls: Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$600(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z

    .line 162
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$500(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 163
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$700(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 164
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->preEffectAction:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$700(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEffectSelected(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 167
    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->isClear:Z
    invoke-static {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$502(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    goto/16 :goto_2

    .line 175
    :cond_9
    if-ne p2, v4, :cond_6

    .line 176
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->artisticButtonValid:Z
    invoke-static {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$302(Lcom/android/gallery3d/photoeditor/EffectsBar;Z)Z

    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$800(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/EffectsMenu;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f020128

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 179
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$800(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/EffectsMenu;

    move-result-object v1

    const v3, 0x7f0d012f

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v3, 0x7f02014d

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 190
    :cond_a
    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$900(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    move v0, v2

    .line 191
    .local v0, select:Z
    :cond_c
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$1$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar$1;I)V

    :goto_4
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    goto :goto_4
.end method
