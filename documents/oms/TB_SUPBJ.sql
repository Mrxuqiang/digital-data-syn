/*
================================================================================
��ṹ����:TB_SUPBJ
��ṹ����:ͼƬ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBJ;
drop index AK_TB_SUPBJ;
drop table TB_SUPBJ;
create table TB_SUPBJ  (
   SUPBJ001             VARCHAR2(30)                    not null,  /*ͼֽ���                       */
   SUPBJ002             INTEGER                         not null,  /*������                       */
   SUPBJ003             NUMBER(2),                                 /*���·������ͼƬ 0·�� 1ͼƬ   */
   SUPBJ004             VARCHAR2(20),                              /*�ļ���׺��                     */
   SUPBJ005             VARCHAR2(100)                   not null,  /*�ļ���                         */
   constraint PK_TB_SUPBJ primary key (SUPBJ001,SUPBJ002)
);
/*create unique index AK_TB_SUPBJ on TB_SUPBJ (SUPBJ001,SUPBJ002);*/
create sequence SEQ_TB_SUPBJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBJ to public;
grant index  on TB_SUPBJ to public;
grant update on TB_SUPBJ to public; 
grant delete on TB_SUPBJ to public;  
grant insert on TB_SUPBJ to public; 
grant select on SEQ_TB_SUPBJ to public;   
