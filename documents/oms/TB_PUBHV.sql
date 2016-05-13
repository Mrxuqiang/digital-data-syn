/*
================================================================================
��ṹ����:TB_PUBHV
��ṹ����:��Ʒ���Ա���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHV;
drop index AK_TB_PUBHV;
drop table TB_PUBHV;
create table TB_PUBHV  (
   PUBHV_ID            INTEGER                   not null,    /*���Ա����ϸID   */   
   PUBHV001            INTEGER                   not null,    /*��Ʒ�������id   */
   PUBHV002            INTEGER,                               /*ԭ������ϸID     */          
   PUBHV003            INTEGER                   not null,    /*��Ʒ���         */       
   PUBHV004            VARCHAR2(1)               not null,    /*�Ƿ�ɶ�         */       
   PUBHV005            VARCHAR2(1)               not null,    /*�Ƿ����         */       
   PUBHV006            VARCHAR2(1)               not null,    /*�Ƿ����         */       
   PUBHV007            VARCHAR2(1)               not null,    /*�Ƿ����         */       
   PUBHV008            VARCHAR2(1)               not null,    /*�Ƿ���Ч         */       
   PUBHV009            VARCHAR2(1),                           /*��POS��(�����ֶ�) */       
   CREATE_USER         VARCHAR2(12),                          /*������Ա          */
   USER_GROUP          VARCHAR2(12),                          /*������Ա����      */                               
   CREATE_DATE         DATE,                                  /*��������          */
   MODIFIER            VARCHAR2(12),                          /*�޸���Ա          */
   MODI_DATE           DATE,                                  /*�޸�����          */
   FLAG                NUMBER(1),                             /*����״̬          */
   constraint PK_TB_PUBHV primary key (PUBHV_ID)
);
create unique index AK_TB_PUBHV on TB_PUBHV (PUBHV001,PUBHV002);
create sequence SEQ_TB_PUBHV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHV to public;
grant index  on TB_PUBHV to public;
grant update on TB_PUBHV to public; 
grant delete on TB_PUBHV to public;  
grant insert on TB_PUBHV to public; 
grant select on SEQ_TB_PUBHV to public;   