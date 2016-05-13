/*
================================================================================
��ṹ����:TB_MEDCG
��ṹ����:ý���ͬ��̯���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDCG;
drop index AK_TB_MEDCG;
drop table TB_MEDCG;
create table TB_MEDCG  (
   MEDCG_ID             INTEGER                         not null,  /*ý���ͬ��̯��ϸID  */
   MEDCG001             INTEGER                         not null,  /*ý���ͬ��̯��ID    */
   MEDCG002             INTEGER                         not null,  /*���޺�ͬID          */
   MEDCG003             VARCHAR2(1)                     not null,  /*��̯��ʽ 1.��ý���ͬ������   2.��ý����������  3.���̶����  */
   MEDCG004             NUMBER(12,2)                    not null,  /*�������%         */
   MEDCG005             NUMBER(12,2)                    not null,  /*��̯���            */
   MEDCG006             VARCHAR2(60),				   /*˵��                */
   MEDCG007             INTEGER,				   /*���õ���ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEDCG primary key (MEDCG_ID)
);
create unique index AK_TB_MEDCG on TB_MEDCG (MEDCG001,MEDCG002);
create sequence SEQ_TB_MEDCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCG to public;
grant index  on TB_MEDCG to public;
grant update on TB_MEDCG to public; 
grant delete on TB_MEDCG to public;  
grant insert on TB_MEDCG to public; 
grant select on SEQ_TB_MEDCG to public;   