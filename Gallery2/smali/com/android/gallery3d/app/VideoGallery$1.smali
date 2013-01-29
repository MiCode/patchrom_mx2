.class Lcom/android/gallery3d/app/VideoGallery$1;
.super Ljava/lang/Object;
.source "VideoGallery.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoGallery;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 9
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 237
    const-string v6, "Gallery2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTabReselected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v6, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 239
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 240
    .local v5, tag:Ljava/lang/String;
    const/4 v4, 0x0

    .line 241
    .local v4, isRemove:Z
    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 242
    .local v3, fragment:Landroid/app/Fragment;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v4, :cond_1

    .line 264
    iget-object v6, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/android/gallery3d/app/VideoGallery;->chooseTabAgian(Landroid/app/Fragment;I)V

    .line 266
    :cond_1
    return-void

    .line 244
    :pswitch_1
    const-string v6, "tag_favorite"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 245
    .local v1, favoritefragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 247
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$200()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v6

    const v7, 0x7f0a01d3

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 251
    .end local v1           #favoritefragment:Landroid/app/Fragment;
    :pswitch_2
    const-string v6, "chaneldetailtabFragment"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 252
    .local v0, chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 255
    :cond_2
    const/4 v4, 0x1

    move-object v6, v3

    .line 256
    check-cast v6, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    .line 257
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$200()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f02

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v6, v3

    .line 258
    check-cast v6, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->checkDataAndUpdateView()V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 10
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 130
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$000()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/gallery3d/app/VideoGallery;->access$002(Z)Z

    .line 132
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/video/client/util/CommonUtil;->ifNeedForceUpdate(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->goToMstore()V

    .line 134
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->finish()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/video/client/util/CommonUtil;->reportLoginForLS(Landroid/content/Context;)V

    .line 141
    :cond_2
    const-string v7, "Gallery2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTabSelected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 143
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    .local v6, tag:Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 145
    .local v3, fragment:Landroid/app/Fragment;
    const/4 v4, 0x0

    .line 146
    .local v4, isRemove:Z
    if-nez v3, :cond_6

    .line 147
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 149
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tab position is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 151
    :pswitch_0
    new-instance v3, Lcom/android/gallery3d/app/VideoGalleryFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-direct {v3, v7}, Lcom/android/gallery3d/app/VideoGalleryFragment;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    .line 163
    .restart local v3       #fragment:Landroid/app/Fragment;
    :goto_1
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 164
    const-string v7, "chaneldetailtabFragment"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 165
    .local v0, chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    move-object v7, v0

    .line 166
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->removeListFragments()V

    .line 167
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 170
    .end local v0           #chaneldetailtabFragment:Landroid/app/Fragment;
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    .line 171
    const-string v7, "tag_search"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 172
    .local v5, searchfragment:Landroid/app/Fragment;
    instance-of v7, v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v7, :cond_4

    .line 173
    check-cast v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local v5           #searchfragment:Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    .line 176
    :cond_4
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f0d0184

    invoke-virtual {v7, v8, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 228
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    invoke-static {v7}, Lcom/android/gallery3d/app/VideoGallery;->access$102(I)I

    .line 230
    if-nez v4, :cond_0

    .line 231
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    iget-object v8, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/VideoGallery;->access$300(Lcom/android/gallery3d/app/VideoGallery;)Z

    move-result v8

    #calls: Lcom/android/gallery3d/app/VideoGallery;->setActionBar(Landroid/app/Fragment;Z)V
    invoke-static {v7, v3, v8}, Lcom/android/gallery3d/app/VideoGallery;->access$400(Lcom/android/gallery3d/app/VideoGallery;Landroid/app/Fragment;Z)V

    goto/16 :goto_0

    .line 154
    :pswitch_1
    new-instance v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    invoke-direct {v3}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;-><init>()V

    .line 155
    .restart local v3       #fragment:Landroid/app/Fragment;
    goto :goto_1

    .line 157
    :pswitch_2
    new-instance v3, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    invoke-direct {v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;-><init>()V

    .line 158
    .restart local v3       #fragment:Landroid/app/Fragment;
    goto :goto_1

    .line 160
    :pswitch_3
    new-instance v3, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    invoke-direct {v3}, Lcom/meizu/video/client/ui/module/search/SearchFragment;-><init>()V

    .restart local v3       #fragment:Landroid/app/Fragment;
    goto :goto_1

    .line 179
    :cond_6
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-eqz v7, :cond_9

    .line 180
    const-string v7, "tag_favorite"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 181
    .local v1, favoritefragment:Landroid/app/Fragment;
    if-eqz v1, :cond_7

    .line 182
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 197
    .end local v1           #favoritefragment:Landroid/app/Fragment;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-nez v7, :cond_b

    .line 198
    const-string v7, "tag_favorite"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 199
    .restart local v1       #favoritefragment:Landroid/app/Fragment;
    if-eqz v1, :cond_8

    .line 200
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 220
    .end local v1           #favoritefragment:Landroid/app/Fragment;
    :cond_8
    :goto_4
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 222
    if-nez v4, :cond_5

    .line 223
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lcom/android/gallery3d/app/VideoGallery;->chooseTabAgian(Landroid/app/Fragment;I)V

    goto :goto_2

    .line 184
    :cond_9
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    .line 185
    const-string v7, "chaneldetailtabFragment"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 186
    .restart local v0       #chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_7

    move-object v7, v0

    .line 187
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->removeListFragments()V

    .line 188
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3

    .line 190
    .end local v0           #chaneldetailtabFragment:Landroid/app/Fragment;
    :cond_a
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    .line 191
    const-string v7, "tag_search"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 192
    .restart local v5       #searchfragment:Landroid/app/Fragment;
    instance-of v7, v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v7, :cond_7

    .line 193
    check-cast v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local v5           #searchfragment:Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    goto :goto_3

    .line 202
    :cond_b
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    .line 203
    const-string v7, "chaneldetailtabFragment"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 204
    .restart local v0       #chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_8

    move-object v7, v0

    .line 205
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->removeListFragments()V

    .line 206
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 207
    const/4 v4, 0x1

    .line 208
    instance-of v7, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    if-eqz v7, :cond_8

    move-object v7, v3

    .line 209
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    .line 210
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$200()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/GalleryActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/VideoGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f02

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v7, v3

    .line 211
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->checkDataAndUpdateView()V

    goto/16 :goto_4

    .line 214
    .end local v0           #chaneldetailtabFragment:Landroid/app/Fragment;
    :cond_c
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 215
    instance-of v7, v3, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v7, :cond_8

    move-object v7, v3

    .line 216
    check-cast v7, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    goto/16 :goto_4

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, tag:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 120
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 124
    :cond_0
    return-void
.end method
