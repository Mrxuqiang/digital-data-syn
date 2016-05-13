/*
================================================================================
��ṹ����:TB_PUBIM
��ṹ����:��ƷͼƬ��
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBIM;
drop index AK_TB_PUBIM;
drop table TB_PUBIM;
create table TB_PUBIM  (
   PUBIM_ID             INTEGER                         not null,  /*��ƷͼƬID        */
   PUBIM001             INTEGER                         not null,  /*��ƷID            */
   PUBIM002             INTEGER,                                   /*ά��1             */
   PUBIM003             INTEGER,                                   /*ά��2             */
   PUBIM004             INTEGER,                                   /*ά��3             */
   PUBIM005             INTEGER,                                   /*ά��4             */
   PUBIM006             INTEGER,                                   /*ά��5             */
   PUBIM007             VARCHAR2(255),                             /*ͼƬ              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER,                                    /*����״̬          */
   constraint PK_TB_PUBIM primary key (PUBIM_ID)
);
create unique index AK_TB_PUBIM on TB_PUBIM (PUBIM001,FLAG);
create sequence SEQ_TB_PUBIM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIM to public;
grant index  on TB_PUBIM to public;
grant update on TB_PUBIM to public; 
grant delete on TB_PUBIM to public;  
grant insert on TB_PUBIM to public; 
grant select on SEQ_TB_PUBIM to public;  


select PUBHF_ID as PURBB003,PUBHF004 as PURBB003C1
from TB_PUBIM where pubhf001=:arg0: and pubhf002=:arg1:

