.class Lcom/android/internal/telephony/LocalizeUtils;
.super Ljava/lang/Object;
.source "AdnRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 914
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "displayName"

    .prologue
    const/16 v6, 0x20

    .line 916
    invoke-static {}, Landroid/pim/HanziToPinyin;->getInstance()Landroid/pim/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/pim/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 917
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/pim/HanziToPinyin$Token;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/pim/HanziToPinyin$Token;

    .line 922
    .local v2, token:Landroid/pim/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v2, Landroid/pim/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_1

    .line 923
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 924
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    :cond_0
    iget-object v4, v2, Landroid/pim/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    iget-object v4, v2, Landroid/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 930
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 931
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 933
    :cond_2
    iget-object v4, v2, Landroid/pim/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 936
    .end local v2           #token:Landroid/pim/HanziToPinyin$Token;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 938
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local p0
    :cond_4
    return-object p0
.end method
