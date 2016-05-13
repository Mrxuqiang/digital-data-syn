/*
================================================================================
��ṹ����:TB_PRCAB
��ṹ����:�۸���Ա�׼�ۼ۱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCAB;
drop index AK_TB_PRCAB;
drop table TB_PRCAB;
create table TB_PRCAB  (
   PRCAB_ID             INTEGER                         not null,  /*�۸���Ա�׼�ۼ�ID*/
   PRCAB001             INTEGER                         not null,  /*�۸����ID        */
   PRCAB002             INTEGER                         not null,  /*��ƷID            */
   PRCAB003             NUMBER(12,2)                    not null,  /*���ۼ�            */
   PRCAB004             NUMBER(12,2)                    not null,  /*��ͼ�            */
   PRCAB005             VARCHAR2(1),                               /*�Ƿ�ɵ���        */
   PRCAB006             VARCHAR2(1),                               /*��Ч��            */
   PRCAB007             NUMBER(12,2)                               /*��Ʒ��ͼ�        */
   PRCAB008             NUMBER(12,2)                            ,  /*����ۿ�          */
   PRCAB009             NUMBER(12,2)                            ,  /*��Ʒ����ۿ�      */
   PRCAB010             NUMBER(12,2)                  ,            /*��˰����          */
   PRCAB011             VARCHAR2(1),                               /*�Ƿ�ɶ�          */--20110805 add by xiechun
   PRCAB012             VARCHAR2(1),                               /*�Ƿ����          */--20110805 add by xiechun
   PRCAB013             VARCHAR2(1),                               /*�Ƿ����          */--20110805 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PRCAB primary key (PRCAB_ID)
);
create unique index AK_TB_PRCAB on TB_PRCAB (PRCAB001,PRCAB002);
create sequence SEQ_TB_PRCAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAB to public;
grant index  on TB_PRCAB to public;
grant update on TB_PRCAB to public; 
grant delete on TB_PRCAB to public;  
grant insert on TB_PRCAB to public; 
grant select on SEQ_TB_PRCAB to public;   