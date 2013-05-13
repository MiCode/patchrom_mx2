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
    .line 243
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

    .line 244
    iget-object v6, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 245
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    .local v5, tag:Ljava/lang/String;
    const/4 v4, 0x0

    .line 247
    .local v4, isRemove:Z
    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 248
    .local v3, fragment:Landroid/app/Fragment;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v4, :cond_1

    .line 269
    iget-object v6, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/android/gallery3d/app/VideoGallery;->chooseTabAgian(Landroid/app/Fragment;I)V

    .line 271
    :cond_1
    return-void

    .line 250
    :pswitch_1
    const-string v6, "tag_favorite"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 251
    .local v1, favoritefragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 253
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$400()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v6

    const v7, 0x7f0a01e2

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(I)V

    goto :goto_0

    .line 257
    .end local v1           #favoritefragment:Landroid/app/Fragment;
    :pswitch_2
    const-string v6, "chaneldetailtabFragment"

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 258
    .local v0, chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 261
    :cond_2
    const/4 v4, 0x1

    move-object v6, v3

    .line 262
    check-cast v6, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    move-object v6, v3

    .line 263
    check-cast v6, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v6}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->checkDataAndUpdateView()V

    goto :goto_0

    .line 248
    nop

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
    .line 137
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$000()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/gallery3d/app/VideoGallery;->access$002(Z)Z

    .line 139
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/video/client/util/CommonUtil;->ifNeedForceUpdate(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 140
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->goToMstore()V

    .line 141
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->finish()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/video/client/util/CommonUtil;->reportLoginForLS(Landroid/content/Context;)V

    .line 148
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

    .line 149
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 150
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 151
    .local v6, tag:Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 152
    .local v3, fragment:Landroid/app/Fragment;
    const/4 v4, 0x0

    .line 153
    .local v4, isRemove:Z
    if-nez v3, :cond_6

    .line 154
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 156
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

    .line 158
    :pswitch_0
    new-instance v3, Lcom/android/gallery3d/app/VideoGalleryFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-direct {v3, v7}, Lcom/android/gallery3d/app/VideoGalleryFragment;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    .line 170
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

    .line 171
    const-string v7, "chaneldetailtabFragment"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 172
    .local v0, chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    move-object v7, v0

    .line 173
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->removeListFragments()V

    .line 174
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 177
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

    .line 178
    const-string v7, "tag_search"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 179
    .local v5, searchfragment:Landroid/app/Fragment;
    instance-of v7, v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v7, :cond_4

    .line 180
    check-cast v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local v5           #searchfragment:Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    .line 183
    :cond_4
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f0d01a2

    invoke-virtual {v7, v8, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 234
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    invoke-static {v7}, Lcom/android/gallery3d/app/VideoGallery;->access$102(I)I

    .line 236
    if-nez v4, :cond_0

    .line 237
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    iget-object v8, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    #getter for: Lcom/android/gallery3d/app/VideoGallery;->mUpdateActionBarTitleAfterChanged:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/VideoGallery;->access$200(Lcom/android/gallery3d/app/VideoGallery;)Z

    move-result v8

    #calls: Lcom/android/gallery3d/app/VideoGallery;->setActionBar(Landroid/app/Fragment;Z)V
    invoke-static {v7, v3, v8}, Lcom/android/gallery3d/app/VideoGallery;->access$300(Lcom/android/gallery3d/app/VideoGallery;Landroid/app/Fragment;Z)V

    goto/16 :goto_0

    .line 161
    :pswitch_1
    new-instance v3, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    invoke-direct {v3}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;-><init>()V

    .line 162
    .restart local v3       #fragment:Landroid/app/Fragment;
    goto :goto_1

    .line 164
    :pswitch_2
    new-instance v3, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    invoke-direct {v3}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;-><init>()V

    .line 165
    .restart local v3       #fragment:Landroid/app/Fragment;
    goto :goto_1

    .line 167
    :pswitch_3
    new-instance v3, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local v3           #fragment:Landroid/app/Fragment;
    invoke-direct {v3}, Lcom/meizu/video/client/ui/module/search/SearchFragment;-><init>()V

    .restart local v3       #fragment:Landroid/app/Fragment;
    goto :goto_1

    .line 186
    :cond_6
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-eqz v7, :cond_9

    .line 187
    const-string v7, "tag_favorite"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 188
    .local v1, favoritefragment:Landroid/app/Fragment;
    if-eqz v1, :cond_7

    .line 189
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 204
    .end local v1           #favoritefragment:Landroid/app/Fragment;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    if-nez v7, :cond_b

    .line 205
    const-string v7, "tag_favorite"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 206
    .restart local v1       #favoritefragment:Landroid/app/Fragment;
    if-eqz v1, :cond_8

    .line 207
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 226
    .end local v1           #favoritefragment:Landroid/app/Fragment;
    :cond_8
    :goto_4
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 228
    if-nez v4, :cond_5

    .line 229
    iget-object v7, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lcom/android/gallery3d/app/VideoGallery;->chooseTabAgian(Landroid/app/Fragment;I)V

    goto :goto_2

    .line 191
    :cond_9
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    .line 192
    const-string v7, "chaneldetailtabFragment"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 193
    .restart local v0       #chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_7

    move-object v7, v0

    .line 194
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->removeListFragments()V

    .line 195
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3

    .line 197
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

    .line 198
    const-string v7, "tag_search"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    .line 199
    .restart local v5       #searchfragment:Landroid/app/Fragment;
    instance-of v7, v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v7, :cond_7

    .line 200
    check-cast v5, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    .end local v5           #searchfragment:Landroid/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    goto :goto_3

    .line 209
    :cond_b
    invoke-static {}, Lcom/android/gallery3d/app/VideoGallery;->access$100()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    .line 210
    const-string v7, "chaneldetailtabFragment"

    invoke-virtual {v2, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 211
    .restart local v0       #chaneldetailtabFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_8

    move-object v7, v0

    .line 212
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelDetailTabFragment;->removeListFragments()V

    .line 213
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 214
    const/4 v4, 0x1

    .line 215
    instance-of v7, v3, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    if-eqz v7, :cond_8

    move-object v7, v3

    .line 216
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->setActionBar()V

    move-object v7, v3

    .line 217
    check-cast v7, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;

    invoke-virtual {v7}, Lcom/meizu/video/client/ui/module/chanel/ChanelFragment;->checkDataAndUpdateView()V

    goto/16 :goto_4

    .line 220
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

    .line 221
    instance-of v7, v3, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    if-eqz v7, :cond_8

    move-object v7, v3

    .line 222
    check-cast v7, Lcom/meizu/video/client/ui/module/search/SearchFragment;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->showOrHideInputSoftKeyboard(Z)V

    goto/16 :goto_4

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 5
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 120
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/VideoGallery;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v3, p0, Lcom/android/gallery3d/app/VideoGallery$1;->this$0:Lcom/android/gallery3d/app/VideoGallery;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/VideoGallery;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    .line 126
    .local v1, sm:Lcom/android/gallery3d/app/StateManager;
    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 127
    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
