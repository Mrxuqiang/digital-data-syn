/*
================================================================================
��ṹ����:TB_DRPAF
��ṹ����:�ϲ���Χ����  
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPAF;
drop index AK_TB_DRPAF;
drop table TB_DRPAF;
create table TB_DRPAF  (
   DRPAF_ID             INTEGER                         not null,  /*�ϲ���Χ��ID          */
   DRPAF001             INTEGER                         not null,  /*�ϲ���λID              */   
   DRPAF002             INTEGER                         not null,  /*����ID              */
   DRPAF003             DATE                            not null,  /*����ڼ�            */            
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPAF primary key (DRPAF_ID)
);
create sequence SEQ_TB_DRPAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAF to public;
grant index  on TB_DRPAF to public;
grant update on TB_DRPAF to public; 
grant delete on TB_DRPAF to public;  
grant insert on TB_DRPAF to public; 
grant select on SEQ_TB_DRPAF to public;   