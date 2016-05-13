/*
================================================================================
��ṹ����:TB_PUBTG 
��ṹ����:��Ʒ�ض����Ӷ��ձ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBTG;
drop index AK_TB_PUBTG;
drop table TB_PUBTG;
create table TB_PUBTG  (
   PUBTG_ID             INTEGER                         not null,  /*��Ʒ�ض����Ӷ���ID     */
   PUBTG001             INTEGER                         not null,  /*��Ʒ�ض����Է�������ID */
   PUBTG002             INTEGER                         not null,  /*�ض�����ID             */
   PUBTG003             NUMBER(22,2)                    not null,  /*�Ӽ�               */
   PUBTF004             VARCHAR2(255)                              /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PUBTG primary key (PUBTG_ID)
);
create unique index AK_TB_PUBTG on TB_PUBTG (PUBTG001,PUBTG002,FLAG);
create sequence SEQ_TB_PUBTG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTG to public;
grant index  on TB_PUBTG to public;
grant update on TB_PUBTG to public; 
grant delete on TB_PUBTG to public;  
grant insert on TB_PUBTG to public; 
grant select on SEQ_TB_PUBTG to public;   