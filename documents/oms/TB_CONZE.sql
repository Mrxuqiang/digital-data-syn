/*
================================================================================
��ṹ����:TB_CONZE
��ṹ����:�̻�������
��ṹĿ��:
================================================================================
*/
DROP TABLE TB_CONZE;
drop sequence SEQ_TB_CONZE;
drop index AK_TB_CONZE;
CREATE TABLE TB_CONZE
(
  CONZE_ID           INTEGER PRIMARY KEY ,           /*������ID*/
  CONZE001           INTEGER NOT NULL,               /*����ID*/
  CONZE002           VARCHAR2(30) NOT NULL,          /*��������*/
  CONZE003           INTEGER NOT NULL,               /*������ͬ��ID*/
  CONZE004           INTEGER NOT NULL,               /*չλ��ID*/
  CONZE005           INTEGER NOT NULL,               /*�̻���ID*/
  CONZE006           INTEGER NOT NULL,               /*��Ӫ��֯ID*/
  CONZE007           INTEGER NOT NULL,               /*Ʒ��ID*/
  CONZE008           INTEGER NOT NULL,               /*ϵ��ID*/
  CONZE_DATE         DATE  NOT NULL,                 /*��������*/
  CONZE009           INTEGER NOT NULL,               /*¼����ID*/
  CONZE_INDATE       DATE NOT NULL,                  /*¼������*/
  CONZE010           INTEGER ,                       /*�����ID*/
  CONZE_SDATE        DATE,                           /*�������*/
  CONZE_STATE        VARCHAR2(1) NOT NULL,           /*���״̬(1.N��δ���;2.Y;�����)*/
  CONZE_REMARK       VARCHAR2(255),                  /*��ע*/
  FLAG         NUMBER                                /*״̬*/
);
create unique index AK_TB_CONZE on TB_CONZE (CONZE002);
create sequence SEQ_TB_CONZE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONZE to public;
grant index  on TB_CONZE to public;
grant update on TB_CONZE to public; 
grant delete on TB_CONZE to public;  
grant insert on TB_CONZE to public; 
grant select on SEQ_TB_CONZE to public;



select ze.*,
       fa.pubfa001 as conze002c1,fa.pubfa002 as conze002c2,                  /* conze002c1 ������룬conze002c2 ������� */
      /*be.conbe_id as conze003c1,*/be.conbe003 as conze003c2,               /* conze003c1 ��ͬID��conze003c2 ��ͬ�� */   
       bi.pubig003 as conze004c1,bi.pubig004 as conze004c2,                  /* conze004c1 ̯λ��ţ�conze004c2 ̯λ����*/
       bg.pubgo001 as conze005c1,bg.pubgo003 as conze005c2,                  /* conze005c1 ���̺ţ�conze005c2 ���̼��*/
       cb.pubcb001 as conze006c1,cb.pubcb002 as conze006c2,                  /* conze006c1 ��Ӫ��֯���룬conze006c2 ��Ӫ��֯���*/
       nd.pubhb001 as conze007c1,nd.pubhb002 as conze007c2,                  /* conze007c1 Ʒ�ƴ��룬conze007c2 Ʒ������*/
       hb.pubhb001 as conze008c1,hb.pubhb002 as conze008c2,                  /* conze008c1 ϵ�д��룬conze008c2 ϵ�м�� */
       cd.pubcd001 as conze009c1,cd.pubcd003 as conze009c2,                  /* conze009c1 ¼���˱�ţ�conze009c2 ¼��������*/
       cdc.pubcd001 as conze010c1,cdc.pubcd003 as conze010c2                 /* conze010c1 ����˱�ţ�conze010c2 ��������� */
 from TB_CONZE ze 
       left join TB_PUBFA fa on ze.conze001 = fa.pubfa_id                    /*TB_PUBFA �����*/
       left join TB_CONBE be on ze.conze003 = be.conbe_id                    /*TB_CONBE ��ͬ��*/
       left join TB_PUBIG bi on ze.conze004 = bi.pubig_id                    /*TB_PUBIG ̯λ��*/
       left join TB_PUBGO bg on ze.conze005 = bg.pubgo_id                    /*TB_PUBGO �̻���*/
       left join TB_PUBCB cb on ze.conze006 = cb.pubcb_id                    /*TB_PUBCB Ӫ����֯��*/
       left join TB_PUBHB_BRAND nd on ze.conze007 = nd.pubhb_id              /*TB_PUBHB_BRAND Ʒ�Ʊ�*/
       left join TB_PUBHB hb on ze.conze008 = hb.pubhb_id                    /*TB_PUBHB ϵ�б�*/
       left join TB_PUBCD cd on ze.conze009 = cd.pubcd_id                    /*TB_PUBCD Ա����*/
       left join TB_PUBCD cdc on ze.conze010 = cdc.pubcd_id
    
       where ze.FLAG =0              
        
        



select PUBCB_ID,PUBCB001,PUBCB002,conbe008 from TB_PUBCB  where FLAG=0 /*Ӫ����֯����*/
 
select * from TB_CONBE BE


/*������ͬ����*/
select be.conbe_id,be.conbe003,
       ad.pubhb_id as conbec001,ad.pubhb001 as conbec001c1,ad.pubhb002 as conbec001c2,
       hb.pubhb_id as conbec002,hb.pubhb001 as conbec002c1,hb.pubhb002 as conbec002c2,
       bg.pubgo_id as conbec003,bg.pubgo001 as conbec003c1,bg.pubgo003 as conbec003c2,
       ig.pubig_id as conbec004,ig.pubig003 as conbec004c1,ig.pubig004 as conbec004c2
       from TB_CONBE be 
       left join TB_PUBHB_BRAND ad on be.conbe058=ad.pubhb_id         /*TB_PUBHB_BRAND Ʒ�Ʊ�*/
       left join TB_PUBHB hb on be.conbe041=hb.pubhb_id               /*TB_PUBHB ϵ�б�*/
       left join TB_PUBGO bg on be.conbe008=bg.pubgo_id               /*TB_PUBGO �̻���*/
       left join TB_PUBIG ig on be.conbe010=ig.pubig_id               /*TB_PUBII ̯λ��*/
       where be.FLAG=0 and be.conbe_id not in(select CONZE003 from TB_CONZE)
       
